tag @a[team=light_purple] add sidebar_player
data modify storage team outpost.this set from storage team outpost.light_purple
scoreboard players operation $this score = light_purple score
function dsc:module/sidebar/this/page
function sidebar.dah:modify/this
tag @a[team=light_purple] remove sidebar_player