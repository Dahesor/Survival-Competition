scoreboard players set #result UID -1
scoreboard players operation #result UID > @a[tag=__targets] UID
tag @a remove __targets