require "Tile"
require "HUD"
require "GameOver"
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
    self.inAI = false
    self.aiState = 0
    self.passTime = 0

    local help = Help.new(self)
    self.inHelp = true
    self.bg:addChild(help.bg)
    registerUpdate(self)
end
function Game:update(diff)
    if self.inAI then
        if self.aiState == 0 then
            self.hud:showAIState()
            self.passTime = 0
            self.aiState = 1
        elseif self.aiState == 1 then
            self.passTime = self.passTime + diff
            if self.passTime >= 1 then
                self.aiState = 2
                self.passTime = 0
                self.aiTile:showSelectBox()       
            end
        --ai 执行选择
        elseif self.aiState == 2 then
            self.passTime = self.passTime + diff
            if self.passTime >= 1 then
                self.aiState = 0
                self.passTime = 0
                self.inAI = false
                self.hud:clearAIState()
                self.aiTile:clearSelect()
                self:doAttackOrMove(Color.BLUE, self.aiTile)
                self:updateTiles()
            end
        end
    end
end
function Game:doAI()
    --risk  reward
    --lostPeople
    --防御一个块的风险和收益是什么？  下一回合开始士兵的数量 就是风险和收益
    --local defense = {}
    local defenseSoldier = {}
    local defenseProduct = {}

    --defense  
    --蓝色 附近的红色造成的士兵损失威胁系数 最大就是当前块士兵数量
    --增强该块可以增加的士兵数量
    
    --生产率 
    --土地数量
    --士兵数量
    local curSoldier = 0
    local curProduct = 0
    local curEarthNum = 0
    local eneSoldier = 0
    local eneProduct = 0
    local eneEarthNum = 0

    for k, v in pairs(self.tiles) do
        if v.color == Color.BLUE then
            curSoldier = curSoldier+v.soldier
            if MapIncr[v.kind] > 0 then
                curProduct = curProduct+MapIncr[v.kind]
            end
            curEarthNum = curEarthNum+1
        elseif v.color == Color.RED then
            eneSoldier = eneSoldier+v.soldier
            if MapIncr[v.kind] > 0 then
                eneProduct = eneProduct+MapIncr[v.kind]
            end
            eneEarthNum = eneEarthNum+1
        end
    end

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
            --如果对方兵力比我强  保护住得到的收益
            --附近兵力 > 0 才行动
            if myPower > 0 then
                if v.soldier <= total then
                    --如果可以防守下来 收益就是1个回合的士兵 损耗就是和对方拼的兵力
                    --兵力变化 和 生产率变化 但是对方的局势也有变化
                    --此消彼长
                    --双方兵力 和 生产率的变化
                    --防守我方的生产率
                    if v.soldier+myPower > total then
                        --if MapIncr[v.kind] > 0 then
                        --防守成功生产率没有变化
                        defenseProduct[k] = {0, 0}
                        --end
                        defenseSoldier[k] = {-total, -total}
                        --defense[k] = MapIncr[v.kind]
                    --不能防守下来 收益就是损耗1个回合兵力
                    else
                        --if MapIncr[v.kind] > 0 then
                        defenseProduct[k] = {-MapIncr[v.kind], MapIncr[v.kind]}
                        --end
                        local lost = v.soldier+myPower
                        defenseSoldier[k] = {-lost, -lost}
                        --defense[k] = -MapIncr[v.kind]
                    end
                --如果对方兵力比我弱小 没有收益
                else
                    defenseProduct[k] = {0, 0}
                    defenseSoldier[k] = {0, 0}
                end
            end
        end
    end

    --local attack = {}
    local attackSoldier = {}
    local attackProduct = {}
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
                        myPower = myPower + n.soldier/2 --攻击只出动当前一半的士兵
                    end
                end
            end
            --我方战斗力比对方强大
            --损失士兵 获得收益 如何进行比较
            --失败损失的是士兵
            --胜利得到的是生产力
            if myPower > 0 then
                if myPower >= v.soldier then
                    attackProduct[k] = {MapIncr[v.kind], -MapIncr[v.kind]}
                    attackSoldier[k] = {-v.soldier, -v.soldier}
                else
                    attackProduct[k] = {0, 0}
                    attackSoldier[k] = {-myPower, -myPower}
                end
            end
        end
    end

    --基本战略 有生力量 很重要 
    --之后在有生力量中选择 生产能力
    --移动到空白块
    --local empty = {}
    local emptySoldier = {}
    local emptyProduct = {}

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
            if myPower > 0 then
                emptyProduct[k] = {MapIncr[v.kind], 0}
                emptySoldier[k] = {0, 0}
                --empty[k] = MapIncr[v.kind]
            end
            --没有兵力 就没有可能
            --[[
            else
                emptyProduct[k] = {0, 0}
                emptySoldier[k] = {0, 0}
                --empty[k] = -MapIncr[v.kind]
            end
            --]]
        end
    end
    
    --首先比较士兵的相对比例能力 有生力量
    --接着比较 相对生产能力 次要力量
    --负数生产率 尽量避免
    local max = -99999
    local maxBlocks = {}
    
    --比较兵力优势
    --在相同兵力优势中 比较 生产力优势
    for k, v in pairs(defenseSoldier) do
        local dmy = curSoldier+v[1]
        local dene = math.max(eneSoldier+v[2], 1)
        local power = math.floor(dmy/dene)
        if power > max then
            max = power
            maxBlocks = {k}
        elseif power == max then
            max = power
            table.insert(maxBlocks, k)
        end
    end

    for k, v in pairs(attackSoldier) do
        local dmy = curSoldier+v[1]
        local dene = math.max(eneSoldier+v[2], 1)
        local power = math.floor(dmy/dene)
        if power > max then
            max = power
            maxBlocks = {k}
        elseif power == max then
            max = power
            table.insert(maxBlocks, k)
        end
    end
    
    for k, v in pairs(emptySoldier) do
        local dmy = curSoldier+v[1]
        local dene = math.max(eneSoldier+v[2], 1)
        local power = math.floor(dmy/dene)
        if power > max then
            max = power
            maxBlocks = {k}
        elseif power == max then
            table.insert(maxBlocks, k)
        end
    end

    if #maxBlocks > 0 then
        local max = -99999
        local productPower = {}
        for k, v in ipairs(maxBlocks) do
            if defenseProduct[v] ~= nil then
                local pro = defenseProduct[v]
                local dmy = curProduct+pro[1]
                local dene = eneProduct+pro[2]
                local power = math.floor(dmy/dene)
                if power > max then
                    max = power
                    productPower = {v}
                elseif power == max then
                    table.insert(productPower, v)
                end
            elseif attackProduct[v] ~= nil then
                local pro = attackProduct[v]
                local dmy = curProduct+pro[1]
                local dene = eneProduct+pro[2]
                local power = math.floor(dmy/dene)
                if power > max then
                    max = power
                    productPower = {v}
                elseif power == max then
                    table.insert(productPower, v)
                end
            elseif emptyProduct[v] ~= nil then
                local pro = emptyProduct[v]
                local dmy = curProduct+pro[1]
                local dene = eneProduct+pro[2]
                local power = math.floor(dmy/dene)
                if power > max then
                    max = power
                    productPower = {v}
                elseif power == max then
                    table.insert(productPower, v)
                end
            end
        end
        self.inAI = true
        self.aiState = 0
        self.passTime = 0


        if #productPower > 0 then
            local rd = math.random(#productPower)
            local mid = productPower[rd]
            self.aiTile = self.tiles[mid]
            --self:doAttackOrMove(Color.BLUE, self.tiles[mid])
        end
    end
    --[[
    if maxBlock ~= nil then
        self:doAttackOrMove(Color.BLUE, self.tiles[maxBlock])
    end
    --]]
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
        local myPower = 0
        for k, v in ipairs(neibors) do
            local n = self.tiles[xyToKey(v[1], v[2])]
            if n ~= nil and n.color == color then
                local left = tile.soldier
                local mv = math.floor(n.soldier/2)
                --local mv = n.soldier
                myPower = myPower+mv
                n:updateSoldier(-mv)
                --[[
                local mv = math.min(n.soldier, left)
                n:updateSoldier(-mv)
                tile.soldier = tile.soldier-mv
                --]]
            end
        end

        if tile.soldier > myPower then
            tile.soldier = tile.soldier - myPower
        else
            myPower = myPower - tile.soldier
            tile.soldier = 0
            tile:setEmpty()
            tile.soldier = myPower
        end
        tile:updateSoldier(0)
        --[[
        tile:updateSoldier(0)
        if tile.soldier == 0 then
            tile:setEmpty()
        end
        --]]
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
    self:checkEnd()
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
function Game:checkEnd()
    local countRed = 0
    local countBlue = 0
    for k, v in pairs(self.tiles) do
        if v.color == Color.RED then
            countRed = countRed+1
        elseif v.color == Color.BLUE then
            countBlue = countBlue+1
        end
    end

    if countRed == 0 then
        self.gameEnd = true
        local over = GameOver.new(false)
        self.bg:addChild(over.bg)
    elseif countBlue == 0 then
        self.gameEnd = true
        local over = GameOver.new(true)
        self.bg:addChild(over.bg)
    end
end

--用户执行操作
--嵌入AI 操作
function Game:clearSelect()
    if self.curTile ~= nil then
        self.curTile:clearSelect()
        self.curTile = nil
    end
    self.hud:updateBlock(nil)
    --self:updateTiles()

    --self.turn = self.turn+1
    --计算机思考
    self:doAI()
    --self:updateTiles()



    self.turn = self.turn+1
    self:checkEnd()
end

function Game:selectTile(tile)
    if self.curTile ~= nil then
        self.curTile:clearSelect()
        self.curTile = nil
    end

    self.curTile = tile
    self.hud:updateBlock(tile)
end

