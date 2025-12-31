tag @a[team=yellow] add sidebar_player
data modify storage team outpost.this set from storage team outpost.yellow
scoreboard players operation $this score = yellow score
function dsc:module/sidebar/this/page
function sidebar.dah:modify/this
tag @a[team=yellow] remove sidebar_player