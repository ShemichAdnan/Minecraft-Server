# Wait until this trader already has at least one vanilla-generated trade (Offers.Recipes[0] exists),
# then add ours. This works whether vanilla generates trades at spawn or lazily on first interaction.
execute as @e[type=minecraft:wandering_trader,tag=!ruby_shop_added] if data entity @s Offers.Recipes[0] run function rubyshop:add_trade
