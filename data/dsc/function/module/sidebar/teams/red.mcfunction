tag @a[team=red] add sidebar_player
data modify storage team outpost.this set from storage team outpost.red
scoreboard players operation $this score = red score
function dsc:module/sidebar/this/page
function sidebar.dah:modify/this
tag @a[team=red] remove sidebar_player