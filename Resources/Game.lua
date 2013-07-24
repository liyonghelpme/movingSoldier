require "Tile"
require "HUD"
Game = class()
function Game:ctor()
    self.bg = CCLayer:create()
    local sea = CCSprite:create("images/seaColor.png")
    local visibleSize = CCDirector:sharedDirector():getVisibleSize()
    sea:setScaleX(visibleSize.width)
    sea:setScaleY(visibleSize.height)
    sea:setAnchorPoint(ccp(0, 0))
    self.bg:addChild(sea)
    self.turn = 0 
    self.curTile = nil

    local mapData = require "mapData"
    local redStart = mapData.mapStart.red
    local blueStart = mapData.mapStart.blue
    print("mapData", mapData.mapWidth, mapData.mapHeight)
    self.tiles = {}
    for j = mapData.mapHeight, 1, -1 do
        for i =1, mapData.mapWidth, 1 do

            local t = mapData.mapData[(j-1)*mapData.mapWidth+i]
            print("i, j", i, j, t)
            if t ~= 0 then
                local tile
                if redStart[1] == i and redStart[2] == j then
                    tile = Tile.new(t, Color.RED, redStart[3], self, i, j)
                elseif blueStart[1] == i and blueStart[2] == j then
                    tile = Tile.new(t, Color.BLUE, blueStart[3], self, i, j)
                else
                    tile = Tile.new(t, Color.EMPTY, 0, self, i, j)
                end
                local row = j-1
                local col = i-1
                if (col%2) == 0 then
                    tile.bg:setPosition(ccp(col*65+81, row*65+27))
                else
                    tile.bg:setPosition(ccp(col*65+81, row*65+32+27))
                end
                self.bg:addChild(tile.bg)
                self.tiles[xyToKey(i, j)] = tile
            end

        end
    end

    local hud = HUD.new(self)
    self.hud = hud
    self.bg:addChild(hud.bg) 

end
function Game:doAI()
    --risk  reward
    --lostPeople
    --防御一个块的风险和收益是什么？  下一回合开始士兵的数量 就是风险和收益
    local defense = {}
    --defense  
    --蓝色 附近的红色造成的士兵损失威胁系数 最大就是当前块士兵数量
    --增强该块可以增加的士兵数量

    for k, v in pairs(self.tiles) do
        if v.color == Color.BLUE then
            local x, y = keyToXY(k) 
            local row = y-1
            local col = x-1
            local neibors
            if col % 2 == 0 then
                neibors = {{x, y-1}, {x+1, y-1}, {x+1, y}, {x, y+1}, {x-1, y}, {x-1, y-1}}
            else
                neibors = {{x, y-1}, {x+1, y}, {x+1, y+1}, {x, y+1}, {x-1, y+1}, {x-1, y}}
            end
            local total = 0
            local myPower = 0
            for nk, nv in ipairs(neibors) do
                local n = self.tiles[xyToKey(nv[1], nv[2])]
                if n ~= nil then
                    if n.color == Color.RED then
                        total = total + n.soldier
                    else
                        myPower = myPower + n.soldier
                    end
                end
            end
            myPower = math.floor(myPower/2)
            --如果对方兵力比我强
            if v.soldier < total then
                --如果可以防守下来 收益就是1个回合的士兵
                if v.soldier+myPower >= total then
                    defense[k] = MapIncr[v.kind]
                --不能防守下来 收益就是损耗1个回合兵力
                else
                    defense[k] = -MapIncr[v.kind]
                end
            --如果对方兵力比我弱小 没有收益
            else
                defense[k] = 0
            end
        end
    end

    local attack = {}
    --攻击敌方块
    for k, v in pairs(self.tiles) do
        if v.color == Color.RED then
            local x, y = keyToXY(k) 
            local row = y-1
            local col = x-1
            local neibors
            if col % 2 == 0 then
                neibors = {{x, y-1}, {x+1, y-1}, {x+1, y}, {x, y+1}, {x-1, y}, {x-1, y-1}}
            else
                neibors = {{x, y-1}, {x+1, y}, {x+1, y+1}, {x, y+1}, {x-1, y+1}, {x-1, y}}
            end
            local total = 0
            local myPower = 0
            for nk, nv in ipairs(neibors) do
                local n = self.tiles[xyToKey(nv[1], nv[2])]
                if n ~= nil then
                    if n.color == Color.RED then
                        total = total + n.soldier
                    else
                        myPower = myPower + n.soldier
                    end
                end
            end
            --我方战斗力比对方强大
            --损失士兵 获得收益 如何进行比较
            --失败损失的是士兵
            --胜利得到的是生产力
            if myPower > v.soldier then
                attack[k] = MapIncr[v.kind]
            else
                attack[k] = -MapIncr[v.kind]
            end
        end
    end

    --移动到空白块
    local empty = {}

    for k, v in pairs(self.tiles) do
        if v.color == Color.EMPTY then
            local x, y = keyToXY(k) 
            local row = y-1
            local col = x-1
            local neibors
            if col % 2 == 0 then
                neibors = {{x, y-1}, {x+1, y-1}, {x+1, y}, {x, y+1}, {x-1, y}, {x-1, y-1}}
            else
                neibors = {{x, y-1}, {x+1, y}, {x+1, y+1}, {x, y+1}, {x-1, y+1}, {x-1, y}}
            end
            local total = 0
            local myPower = 0
            for nk, nv in ipairs(neibors) do
                local n = self.tiles[xyToKey(nv[1], nv[2])]
                if n ~= nil then
                    if n.color == Color.RED then
                        total = total + n.soldier
                    else
                        myPower = myPower + n.soldier
                    end
                end
            end
            if myPower > total then
                empty[k] = MapIncr[v.kind]
            else
                empty[k] = -MapIncr[v.kind]
            end
        end
    end
    
    local max = -99999
    local maxBlock = nil
    for k, v in pairs(defense) do
        if v > max then
            maxBlock = k
            max = v
        end
    end

    for k, v in pairs(attack) do
        if v > max then
            maxBlock = k
            max = v
        end
    end
    
    for k, v in pairs(empty) do
        if v > max then
            maxBlock = k
            max = v
        end
    end

    if maxBlock ~= nil then
        self:doAttackOrMove(Color.BLUE, self.tiles[maxBlock])
    end
end
--谁 向 某块下达指令
function Game:doAttackOrMove(color, tile)
    local col = tile.x-1
    local row = tile.y-1
    local x, y = tile.x, tile.y
    local neibors
    if col % 2 == 0 then
        neibors = {{x, y-1}, {x+1, y-1}, {x+1, y}, {x, y+1}, {x-1, y}, {x-1, y-1}}
    else
        neibors = {{x, y-1}, {x+1, y}, {x+1, y+1}, {x, y+1}, {x-1, y+1}, {x-1, y}}
    end
    --循环调度
    --同色移动士兵
    if tile.color == color then
        for k, v in ipairs(neibors) do
            local n = self.tiles[xyToKey(v[1], v[2])]
            if n ~= nil and n.color == color then
                local mv = math.floor(n.soldier/2)
                n:updateSoldier(-mv)
                tile.soldier  = tile.soldier+mv
            end
        end
        tile:updateSoldier(0)
    --异色攻击块
    elseif tile.color ~= Color.EMPTY then
        for k, v in ipairs(neibors) do
            local n = self.tiles[xyToKey(v[1], v[2])]
            if n ~= nil and n.color == color then
                local left = tile.soldier
                local mv = math.min(n.soldier, left)
                n:updateSoldier(-mv)
                tile.soldier = tile.soldier-mv
            end
        end
        tile:updateSoldier(0)
        if tile.soldier == 0 then
            tile:setEmpty()
        end
    --空白相当于移动
    else
        for k, v in ipairs(neibors) do
            local n = self.tiles[xyToKey(v[1], v[2])]
            if n ~= nil and n.color == color then
                local mv = math.floor(n.soldier/2)
                n:updateSoldier(-mv)
                tile.soldier  = tile.soldier+mv
            end
        end
        tile:updateSoldier(0)
        tile:changeColor(color)
    end
end


function Game:updateTiles()
    for k, v in pairs(self.tiles) do
        if v.color ~= Color.EMPTY then
            if v.kind == 1 then
                v:updateSoldier(1)
            elseif v.kind == 2 then
                v:updateSoldier(2)
            elseif v.kind == 3 then
                v:updateSoldier(3)
            elseif v.kind == 4 then
                v:updateSoldier(-1)
            elseif v.kind == 5 then
            end
        end
    end
end
function Game:clearSelect()
    if self.curTile ~= nil then
        self.curTile:clearSelect()
        self.curTile = nil
    end
    self.hud:updateBlock(nil)
    self:updateTiles()

    --self.turn = self.turn+1
    --计算机思考
    self:doAI()
    self:updateTiles()

    self.turn = self.turn+1
end
function Game:selectTile(tile)
    if self.curTile ~= nil then
        self.curTile:clearSelect()
        self.curTile = nil
    end

    self.curTile = tile
    self.hud:updateBlock(tile)
end

