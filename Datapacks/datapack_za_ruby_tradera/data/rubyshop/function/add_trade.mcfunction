# Mark this trader so the trade is only ever added once
tag @s add ruby_shop_added

data modify storage rubyshop:vars sellCount set value 1

execute store result storage rubyshop:vars buyCount int 1 run random value 3..5

execute store result storage rubyshop:vars maxUses int 1 run random value 1..5

function rubyshop:build_trade with storage rubyshop:vars
