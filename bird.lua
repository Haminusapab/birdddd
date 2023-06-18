local entity_id = GetUpdatedEntityID()
local x, y = EntityGetTransform(entity_id)
local player = EntityGetWithTag("player_unit")[1]
if not player then return end
local player_x, player_y = EntityGetTransform(entity_id)

local speed = 5
local distanceThreshold = 100

function getDistance(x1, y1, x2, y2)
   return math.sqrt((x2 - x1)^2 + (y2 - y1)^2)
end

local dx = math.abs(player_x - x)
local dy = math.abs(player_y - y)
local distance = getDistance(x, y, player_x, player_y)

if distance > distanceThreshold then
   local directionX = dx / distance
   local directionY = dy / distance

   x = x + directionX * speed
   y = y + directionY * speed
end

EntitySetTransform(entity_id, x, y)
