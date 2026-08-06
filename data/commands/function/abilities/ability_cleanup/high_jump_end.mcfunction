execute as @p run function commands:attributes/clears/clear_high_jump_down_gravity

execute as @p run function commands:replace/generic_enchant_check {custom_data:{archerbow:1b},enchant_modifier:"blast_shot_enchant_remove"}

tag @p add safeFall

tag @p remove highJumpHover