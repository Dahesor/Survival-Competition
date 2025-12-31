tag @a[team=gold] add sidebar_player
data modify storage team outpost.this set from storage team outpost.gold
scoreboard players operation $this score = gold score
function dsc:module/sidebar/this/page
function sidebar.dah:modify/this
tag @a[team=gold] remove sidebar_player