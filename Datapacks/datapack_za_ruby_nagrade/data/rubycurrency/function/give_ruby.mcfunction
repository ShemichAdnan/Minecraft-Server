# Izvrsava se automatski kao igrac (@s) cim mu se dodijeli BILO KOJI pravi advancement
# (recepti/recipe-unlocks su namjerno izuzeti, pa se ne dijele nagrade za otkljucavanje recepata)

give @s minecraft:rabbit_foot[custom_model_data={floats:[100002]},custom_name={"text":"Ruby","bold":true,"color":"red","italic":false},lore=[{"text":"Server valuta","color":"gray","italic":false}],rarity="epic"] 1

playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 1.4

scoreboard players add @s adv_counter 1