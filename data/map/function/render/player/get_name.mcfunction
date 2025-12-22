data modify entity 0-0-0-0-1 text set value {selector:"@a[limit=1,tag=map.__name]"}
data modify storage map:main t.extra[1].hover_event.value.extra[0] set from entity 0-0-0-0-1 text
data remove storage map:main t.extra[1].hover_event.value.extra[0].hover_event
data remove storage map:main t.extra[1].hover_event.value.extra[0].click_event
data modify storage map:main t.extra[1].color set from storage map:main t.extra[1].hover_event.value.extra[0].color