# Poklopac za smece (custom_model_data 100003) - luck dok je na glavi
execute as @a if items entity @s armor.head minecraft:paper[custom_model_data={floats:[100003]}] run function farmer:apply_luck

# Farmerova Kapa (custom_model_data 100001) - luck dok je na glavi
execute as @a if items entity @s armor.head minecraft:paper[custom_model_data={floats:[100001]}] run function farmer:apply_luck

# Ako nijedan od predmeta za luck nije na glavi, ukloni luck efekat
execute as @a unless items entity @s armor.head minecraft:paper[custom_model_data={floats:[100003]}] unless items entity @s armor.head minecraft:paper[custom_model_data={floats:[100001]}] if score @s farmer_luck matches 1 run function farmer:remove_luck

# Diving Goggles (custom_model_data 100005) - daje Conduit Power dok je na glavi
execute as @a if items entity @s armor.head minecraft:rabbit_foot[custom_model_data={floats:[100005]}] run function farmer:apply_diving

# Ako naočale nisu na glavi, a igrač ima score, ukloni efekat
execute as @a unless items entity @s armor.head minecraft:rabbit_foot[custom_model_data={floats:[100005]}] if score @s diving_goggles matches 1 run function farmer:remove_diving

# Daje Haste SAMO ako je motorka u GLAVNOJ ruci
execute as @a if items entity @s weapon.mainhand minecraft:netherite_axe[custom_model_data={floats:[100006]}] run function farmer:apply_chainsaw

# Uklanja Haste ako motorka nije u glavnoj ruci, a igrač ima aktivan score
execute as @a unless items entity @s weapon.mainhand minecraft:netherite_axe[custom_model_data={floats:[100006]}] if score @s chainsaw_effect matches 1 run function farmer:remove_chainsaw

# Daje Slowness SAMO ako je Zupčasti Razarač u GLAVNOJ ruci
execute as @a if items entity @s weapon.mainhand minecraft:netherite_pickaxe[custom_model_data={floats:[100014]}] run function farmer:apply_pickaxe_slowness

# Uklanja Slowness ako Zupčasti Razarač nije u glavnoj ruci, a igrač ima aktivan score
execute as @a unless items entity @s weapon.mainhand minecraft:netherite_pickaxe[custom_model_data={floats:[100014]}] if score @s pickaxe_slowness matches 1 run function farmer:remove_pickaxe_slowness

# Daje Strength SAMO ako je Zmajev Dah u GLAVNOJ ruci
execute as @a if items entity @s weapon.mainhand minecraft:netherite_sword[custom_model_data={floats:[100015]}] run function farmer:apply_dragon_strength

# Uklanja Strength ako Zmajev Dah nije u glavnoj ruci, a igrač ima aktivan score
execute as @a unless items entity @s weapon.mainhand minecraft:netherite_sword[custom_model_data={floats:[100015]}] if score @s dragon_strength matches 1 run function farmer:remove_dragon_strength