tp @s ~ ~-.2 ~
execute if predicate items:is_override unless block ~ ~1.1 ~ air run function items:realistic/stop_descend/override
execute unless predicate items:is_override unless block ~ ~1.65 ~ air run function items:realistic/stop_descend/standard