data modify storage dsc:task new set value []
function #registry:reg
data modify storage dsc:task entry set from storage dsc:task new
data modify storage dsc:task entry[].completed set value false
data modify storage dsc:task new set value []