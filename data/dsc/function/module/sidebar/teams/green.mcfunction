tag @a[team=green] add sidebar_player
data modify storage team outpost.this set from storage team outpost.green
scoreboard players operation $this score = green score
function dsc:module/sidebar/this/page
function sidebar.dah:modify/this
tag @a[team=green] remove sidebar_player