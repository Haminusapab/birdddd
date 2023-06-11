function OnPlayerSpawned(player_entity)
    local x, y = EntityGetTransform(player_entity)
    EntityLoad("mods/bird/files/entity.xml", x, y)
 end