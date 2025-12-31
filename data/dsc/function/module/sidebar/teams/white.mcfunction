tag @a[team=white] add sidebar_player
data modify storage team outpost.this set from storage team outpost.white
scoreboard players operation $this score = white score
function dsc:module/sidebar/this/page
function sidebar.dah:modify/this
tag @a[team=white] remove sidebar_player