--0 空白
--1 草地
--2 村庄
--3 城堡
--4 山地
--5 土地

local mapHeight = 5
local mapWidth = 5
local mapData = {
3,2,0,0,0,
2,4,1,1,0,
1,4,4,1,3,
1,1,2,0,0,
3,0,0,0,0
}
--图块编号 图块士兵数量
local mapStart = {
red = {1, 1, 99},
blue = {1, 5, 99},
}
return {mapData=mapData, mapHeight=mapHeight, mapWidth=mapWidth, mapStart=mapStart}
