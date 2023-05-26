/datum/advanced_map_generator/planet_generator/lava
	// values near 0.5 look bad due to the behavior of naive perlin noise
	// so this was bumped down a little below 0.5
	mountain_height = 0.65
	perlin_zoom = 85

	primary_area_type = /area/lavaland/surface/outdoors/unexplored
	cave_area = /area/lavaland/underground

	biome_table = list(
		BIOME_COLDEST = list(
			BIOME_LOWEST_HUMIDITY = /datum/adv_biome/lavaland/forest,
			BIOME_LOW_HUMIDITY = /datum/adv_biome/lavaland/plains/dense/mixed,
			BIOME_MEDIUM_HUMIDITY = /datum/adv_biome/lavaland/forest/rocky,
			BIOME_HIGH_HUMIDITY = /datum/adv_biome/lavaland/outback,
			BIOME_HIGHEST_HUMIDITY = /datum/adv_biome/lavaland/plains/dense
		),
		BIOME_COLD = list(
			BIOME_LOWEST_HUMIDITY = /datum/adv_biome/lavaland/plains,
			BIOME_LOW_HUMIDITY = /datum/adv_biome/lavaland/outback,
			BIOME_MEDIUM_HUMIDITY = /datum/adv_biome/lavaland/plains/dense,
			BIOME_HIGH_HUMIDITY = /datum/adv_biome/lavaland/plains/dense/mixed,
			BIOME_HIGHEST_HUMIDITY = /datum/adv_biome/lavaland/outback
		),
		BIOME_WARM = list(
			BIOME_LOWEST_HUMIDITY = /datum/adv_biome/lavaland,
			BIOME_LOW_HUMIDITY = /datum/adv_biome/lavaland/plains,
			BIOME_MEDIUM_HUMIDITY = /datum/adv_biome/lavaland/forest,
			BIOME_HIGH_HUMIDITY = /datum/adv_biome/lavaland/lush,
			BIOME_HIGHEST_HUMIDITY = /datum/adv_biome/lavaland/lava
		),
		BIOME_TEMPERATE = list(
			BIOME_LOWEST_HUMIDITY = /datum/adv_biome/lavaland/plains/dense/mixed,
			BIOME_LOW_HUMIDITY = /datum/adv_biome/lavaland/forest,
			BIOME_MEDIUM_HUMIDITY = /datum/adv_biome/lavaland/plains/dense,
			BIOME_HIGH_HUMIDITY = /datum/adv_biome/lavaland,
			BIOME_HIGHEST_HUMIDITY = /datum/adv_biome/lavaland/lava
		),
		BIOME_HOT = list(
			BIOME_LOWEST_HUMIDITY = /datum/adv_biome/lavaland/outback,
			BIOME_LOW_HUMIDITY = /datum/adv_biome/lavaland,
			BIOME_MEDIUM_HUMIDITY = /datum/adv_biome/lavaland/plains/dense/mixed,
			BIOME_HIGH_HUMIDITY = /datum/adv_biome/lavaland,
			BIOME_HIGHEST_HUMIDITY = /datum/adv_biome/lavaland/lava
		),
		BIOME_HOTTEST = list(
			BIOME_LOWEST_HUMIDITY = /datum/adv_biome/lavaland/forest/rocky,
			BIOME_LOW_HUMIDITY = /datum/adv_biome/lavaland/outback,
			BIOME_MEDIUM_HUMIDITY = /datum/adv_biome/lavaland/plains,
			BIOME_HIGH_HUMIDITY = /datum/adv_biome/lavaland,
			BIOME_HIGHEST_HUMIDITY = /datum/adv_biome/lavaland/lava
		)
	)

	cave_biome_table = list(
		BIOME_COLDEST_CAVE = list(
			BIOME_LOWEST_HUMIDITY = /datum/adv_biome/cave/lavaland/rocky,
			BIOME_LOW_HUMIDITY = /datum/adv_biome/cave/lavaland/rocky,
			BIOME_MEDIUM_HUMIDITY = /datum/adv_biome/cave/lavaland,
			BIOME_HIGH_HUMIDITY = /datum/adv_biome/cave/lavaland,
			BIOME_HIGHEST_HUMIDITY = /datum/adv_biome/cave/lavaland/mossy
		),
		BIOME_COLD_CAVE = list(
			BIOME_LOWEST_HUMIDITY = /datum/adv_biome/cave/lavaland/rocky,
			BIOME_LOW_HUMIDITY = /datum/adv_biome/cave/lavaland,
			BIOME_MEDIUM_HUMIDITY = /datum/adv_biome/cave/lavaland/lava,
			BIOME_HIGH_HUMIDITY = /datum/adv_biome/cave/lavaland/mossy,
			BIOME_HIGHEST_HUMIDITY = /datum/adv_biome/cave/lavaland/lava
		),
		BIOME_WARM_CAVE = list(
			BIOME_LOWEST_HUMIDITY = /datum/adv_biome/cave/lavaland/rocky,
			BIOME_LOW_HUMIDITY = /datum/adv_biome/cave/lavaland,
			BIOME_MEDIUM_HUMIDITY = /datum/adv_biome/cave/lavaland/mossy,
			BIOME_HIGH_HUMIDITY = /datum/adv_biome/cave/lavaland/rocky,
			BIOME_HIGHEST_HUMIDITY = /datum/adv_biome/cave/lavaland/lava
		),
		BIOME_HOT_CAVE = list(
			BIOME_LOWEST_HUMIDITY = /datum/adv_biome/cave/lavaland/rocky,
			BIOME_LOW_HUMIDITY = /datum/adv_biome/cave/lavaland/mossy,
			BIOME_MEDIUM_HUMIDITY = /datum/adv_biome/cave/lavaland/mossy,
			BIOME_HIGH_HUMIDITY = /datum/adv_biome/cave/lavaland/lava,
			BIOME_HIGHEST_HUMIDITY = /datum/adv_biome/cave/lavaland/lava
		)
	)

/datum/adv_biome/lavaland
	open_turf_types = list(/turf/open/misc/asteroid/basalt/lava_land_surface/lit = 1)
	flora_spawn_chance = 1
	flora_spawn_list = list(
		/obj/structure/flora/bush/ywflowers/hell = 10,
		/obj/structure/flora/bush/sparsegrass/hell = 40,
		///obj/structure/flora/ash/fern = 5,
		/obj/structure/flora/ash/fireblossom = 1,
		///obj/structure/flora/ash/puce = 5,
	)
	feature_spawn_chance = 0.3
	feature_spawn_list = list(/obj/structure/flora/rock/hell = 5, /obj/structure/elite_tumor = 1, /obj/structure/geyser/random = 1)
	mob_spawn_chance = 4
	mob_spawn_list = list(
		/mob/living/simple_animal/hostile/asteroid/goliath/beast/random = 50,
		/obj/structure/spawner/lavaland/goliath = 3,
		/mob/living/simple_animal/hostile/asteroid/basilisk/watcher/random = 40,
		/obj/structure/spawner/lavaland = 3,
		/mob/living/simple_animal/hostile/asteroid/hivelord/legion/random = 30,
		/obj/structure/spawner/lavaland/legion = 3,
		/mob/living/simple_animal/hostile/asteroid/goldgrub = 10,
		/mob/living/simple_animal/hostile/asteroid/brimdemon = 20,
		///mob/living/simple_animal/hostile/asteroid/goliath/beast/ancient/crystal = 1,
		///mob/living/simple_animal/hostile/asteroid/basilisk/watcher/forgotten = 1,
		///mob/living/simple_animal/hostile/asteroid/hivelord/legion/crystal = 1
	)

/datum/adv_biome/lavaland/forest
	open_turf_types = list(/turf/open/misc/asteroid/purple/lit = 1)
	flora_spawn_list = list(
		/obj/structure/flora/tree/dead/tall/grey = 1,
		/obj/structure/flora/tree/dead/barren = 1,
		/obj/structure/flora/bush/fullgrass/hell = 10,
		/obj/structure/flora/bush/sparsegrass/hell = 5
	)
	flora_spawn_chance = 85

/datum/adv_biome/lavaland/forest/rocky
	flora_spawn_list = list(
		/obj/structure/flora/rock/pile/lava = 3,
		/obj/structure/flora/rock/lava = 2,
		/obj/structure/flora/tree/dead/tall/grey = 10,
		/obj/structure/flora/bush/fullgrass/hell = 40,
		/obj/structure/flora/bush/sparsegrass/hell = 20,
		/obj/structure/flora/bush/hell = 2
	)
	flora_spawn_chance = 65

/datum/adv_biome/lavaland/plains
	open_turf_types = list(
/turf/open/misc/grass/lava/purple = 30)

	flora_spawn_list = list(
		/obj/structure/flora/bush/fullgrass/hell = 50,
		/obj/structure/flora/bush/sparsegrass/hell = 35,
		/obj/structure/flora/bush/ywflowers/hell = 1,
		/obj/structure/flora/bush/grassybush/hell = 4,
		/obj/structure/flora/firebush = 1
	)
	flora_spawn_chance = 15

/datum/adv_biome/lavaland/plains/dense
	flora_spawn_chance = 85
	open_turf_types = list(
/turf/open/misc/grass/lava = 50)
	feature_spawn_chance = 5
	feature_spawn_list = list(
		/obj/structure/flora/tree/dead/barren = 1,
		/obj/structure/flora/tree/dead/tall/grey = 1,
	)

/datum/adv_biome/lavaland/plains/dense/mixed
	flora_spawn_chance = 50
	open_turf_types = list(
		/turf/open/misc/grass/lava = 50,
		/turf/open/misc/grass/lava/purple = 45, /turf/open/misc/moss = 1)

/datum/adv_biome/lavaland/outback
	open_turf_types = list(
/turf/open/misc/grass/lava/orange = 20)

	flora_spawn_list = list(
		/obj/structure/flora/bush/grassybush/hell = 10,
		/obj/structure/flora/bush/genericbush/hell = 10,
		/obj/structure/flora/bush/sparsegrass/hell = 3,
		/obj/structure/flora/bush/hell = 3,
		/obj/structure/flora/tree/dead/hell = 3,
		/obj/structure/flora/rock/lava = 2
	)
	flora_spawn_chance = 30

/datum/adv_biome/lavaland/lush
	open_turf_types = list(
/turf/open/misc/grass/lava/purple = 20, /turf/open/misc/asteroid/basalt/purple/lit = 1)
	flora_spawn_list = list(
		/obj/structure/flora/ash/fireblossom = 3,
		/obj/structure/flora/tree/dead/hell = 1,
		/obj/structure/flora/bush/grassybush/hell = 5,
		/obj/structure/flora/bush/fullgrass/hell = 10,
		/obj/structure/flora/bush/sparsegrass/hell = 8,
		/obj/structure/flora/bush/hell = 5,
		/obj/structure/flora/bush/fernybush/hell = 5,
		/obj/structure/flora/bush/genericbush/hell = 5,
		/obj/structure/flora/bush/ywflowers/hell = 7,
		/obj/structure/flora/firebush = 3
	)
	flora_spawn_chance = 30

/datum/adv_biome/lavaland/lava
	open_turf_types = list(/turf/open/lava/smooth/lava_land_surface = 1)
	flora_spawn_list = list(
		/obj/structure/flora/rock/lava = 1,
		/obj/structure/flora/rock/pile/lava = 1
	)
	flora_spawn_chance = 2
	feature_spawn_chance = 0
	mob_spawn_chance = 0

/datum/adv_biome/lavaland/lava/rocky
	flora_spawn_chance = 4

/datum/adv_biome/cave/lavaland
	open_turf_types = list(/turf/open/misc/asteroid/basalt/lava_land_surface = 1)
	closed_turf_types = list(/turf/closed/mineral/random/volcanic = 1)
	mob_spawn_chance = 4
	mob_spawn_list = list(
		/mob/living/simple_animal/hostile/asteroid/goliath/beast/random = 50,
		/obj/structure/spawner/lavaland/goliath = 3,
		/mob/living/simple_animal/hostile/asteroid/basilisk/watcher/random = 40,
		/obj/structure/spawner/lavaland = 3,
		/mob/living/simple_animal/hostile/asteroid/hivelord/legion/random = 30,
		/obj/structure/spawner/lavaland/legion = 3,
		/mob/living/simple_animal/hostile/asteroid/goldgrub = 10
	)
	flora_spawn_chance = 1
	flora_spawn_list = list(
		/obj/structure/flora/ash/leaf_shroom = 1,
		/obj/structure/flora/ash/cap_shroom = 2,
		/obj/structure/flora/ash/stem_shroom = 2,
		/obj/structure/flora/ash/cacti = 1,
		/obj/structure/flora/ash/tall_shroom = 2,
//		/obj/structure/flora/ash/fern = 2,
//		/obj/structure/flora/ash/puce = 2
	)

/datum/adv_biome/cave/lavaland/rocky
	open_turf_types = list(/turf/open/misc/asteroid/purple = 1)
	flora_spawn_list = list(
		/obj/structure/flora/rock/pile/lava = 1,
		/obj/structure/flora/rock/lava = 1
	)
	flora_spawn_chance = 5

/datum/adv_biome/cave/lavaland/mossy
	open_turf_types = list(/turf/open/misc/moss = 1)
	flora_spawn_chance = 80
	flora_spawn_list = list(
		/obj/structure/flora/bush/fullgrass/hell = 10,
		/obj/structure/flora/bush/sparsegrass/hell = 5,
		/obj/structure/flora/ash/leaf_shroom = 1,
		/obj/structure/flora/ash/cap_shroom = 2,
		/obj/structure/flora/ash/stem_shroom = 2,
		/obj/structure/flora/ash/cacti = 1,
		/obj/structure/flora/ash/tall_shroom = 2
	)

/datum/adv_biome/cave/lavaland/lava
	open_turf_types = list(/turf/open/lava/smooth/lava_land_surface = 1)
	feature_spawn_chance = 1
	feature_spawn_list = list(/obj/structure/flora/rock/pile/lava = 1)

// FLORA

/obj/structure/flora/firebush
	name = "flaming bush"
	desc = "A bush being consumed by flames. Maybe it'll rise from its ashes like a phoenix?"
	icon = 'z_modular_event/mapgen/icons/obj/flora/hellflora.dmi'
	icon_state = "hell_bush"
	density = FALSE
	light_color = "#e08300"
	light_power = 2
	light_range = 3
	resistance_flags = LAVA_PROOF

/obj/structure/flora/bush/fullgrass/hell
	name = "thick hellish grass"
	desc = "A thick patch of grass tinted red."
	icon = 'z_modular_event/mapgen/icons/obj/flora/hellflora.dmi'
	light_range = 2
	light_power = 3
	resistance_flags = LAVA_PROOF
	gender = PLURAL

/obj/structure/flora/bush/fullgrass/hell/Initialize()
	. = ..()
	icon_state = "fullgrass_[rand(1, 3)]"
	light_color = pick("#e87800", "#780606")

/obj/structure/flora/bush/sparsegrass/hell
	name = "sparse hellish grass"
	desc = "A sparse patch of grass tinted red."
	icon = 'z_modular_event/mapgen/icons/obj/flora/hellflora.dmi'
	light_range = 2
	light_power = 3
	resistance_flags = LAVA_PROOF
	gender = PLURAL

/obj/structure/flora/bush/sparsegrass/hell/Initialize()
	. = ..()
	icon_state = "sparsegrass_[rand(1, 3)]"
	light_color = pick("#e87800", "#780606")

/obj/structure/flora/bush/grassybush/hell
	name = "crimson bush"
	desc = "A crimson bush, native to lava planets."
	icon = 'z_modular_event/mapgen/icons/obj/flora/hellflora.dmi'
	light_color = "#c70404"
	light_range = 2
	light_power = 3
	resistance_flags = LAVA_PROOF

/obj/structure/flora/bush/hell
	name = "smouldering bush"
	desc = "Some kind of orange plant that appears to be slowly burning."
	icon = 'z_modular_event/mapgen/icons/obj/flora/hellflora.dmi'
	light_range = 2
	light_power = 1
	resistance_flags = LAVA_PROOF

/obj/structure/flora/bush/hell/Initialize()
	. = ..()
	if(icon_state == "firstbush_1")
		icon_state = "firstbush_[rand(1, 4)]"
	light_color = pick("#e87800", "#780606")

/obj/structure/flora/bush/fernybush/hell
	name = "hellish fern"
	desc = "Some kind of orange fern."
	icon = 'z_modular_event/mapgen/icons/obj/flora/hellflora.dmi'
	light_range = 2
	light_power = 1
	resistance_flags = LAVA_PROOF

/obj/structure/flora/bush/fernybush/hell/Initialize()
	. = ..()
	icon_state = "fernybush_[rand(1, 3)]"
	light_color = pick("#e87800", "#780606")

/obj/structure/flora/bush/genericbush/hell
	name = "hellish bush"
	desc = "A small crimson bush."
	icon = 'z_modular_event/mapgen/icons/obj/flora/hellflora.dmi'
	light_range = 2
	light_power = 2
	resistance_flags = LAVA_PROOF

/obj/structure/flora/bush/genericbush/hell/Initialize()
	. = ..()
	icon_state = "genericbush_[rand(1, 4)]"
	light_color = pick("#e87800", "#780606")

/obj/structure/flora/bush/ywflowers/hell
	name = "lavablossom"
	desc = "Some red and orange flowers. They appear to be faintly glowing."
	icon = 'z_modular_event/mapgen/icons/obj/flora/hellflora.dmi'
	light_color = "#aba507"
	light_power = 3
	light_range = 2
	resistance_flags = LAVA_PROOF
	gender = PLURAL

/obj/structure/flora/rock/lava
	name = "lavatic rock"
	desc = "A volcanic rock. Lava is gushing from it. "
	icon = 'z_modular_event/mapgen/icons/obj/flora/lavarocks.dmi'
	icon_state = "basalt"
	light_color = "#ab4907"
	resistance_flags = LAVA_PROOF
	light_power = 3
	light_range = 2

/obj/structure/flora/rock/pile/lava
	name = "rock shards"
	desc = "Jagged shards of volcanic rock protuding from the ground."
	icon = 'z_modular_event/mapgen/icons/obj/flora/lavarocks.dmi'
	icon_state = "lavarocks"
	gender = PLURAL
	resistance_flags = LAVA_PROOF

/obj/structure/flora/rock/asteroid
	name = "pebbles"
	desc = "Some small pebbles, sheared off a larger rock."
	icon_state = "asteroid0"
	base_icon_state = "asteroid"
	density = FALSE
	gender = PLURAL

/obj/structure/flora/rock/asteroid/Initialize()
	. = ..()
	icon_state = "[base_icon_state][rand(0,9)]"

/obj/structure/flora/tree/dead/hell
	name = "crimson tree"
	desc = "A crimson tree with lava oozing from it, providing a slight glow."
	icon = 'z_modular_event/mapgen/icons/obj/flora/lavatrees.dmi'
	pixel_x = -16
	light_color = LIGHT_COLOR_BLOOD_MAGIC
	light_range = 2
	light_power = 0.85
	resistance_flags = LAVA_PROOF

/obj/structure/flora/tree/dead_pine
	name = "dead pine"
	desc = "A dead pine tree, its leaves stripped away."
	icon = 'z_modular_event/mapgen/icons/obj/flora/bigtrees.dmi'
	icon_state = "med_pine_dead"
	pixel_x = -16

/obj/structure/flora/tree/dead/tall
	name = "dead tall tree"
	desc = "The last vestiges of an once majestic tree."
	icon = 'z_modular_event/mapgen/icons/obj/flora/tall_trees.dmi'
	icon_state = "tree_1"
	base_icon_state = "tree"
	pixel_x = -16
	resistance_flags = LAVA_PROOF

/obj/structure/flora/tree/dead/tall/Initialize()
	. = ..()
	icon_state = "[base_icon_state]_[rand(1,3)]"

/obj/structure/flora/tree/dead/tall/grey
	name = "petrified trunk"
	desc = "An ancient tree was carbonized in fire and ash. Only a skeleton remains."
	icon = 'z_modular_event/mapgen/icons/obj/flora/tall_trees_dead.dmi'

/obj/structure/flora/tree/dead/barren
	name = "petrified tree"
	desc = "An ancient trunk, mummified by the passage of time. This one still has some purple to it."
	color = "#846996"
	icon = 'z_modular_event/mapgen/icons/obj/flora/barren_tree.dmi'

/obj/structure/flora/tree/dead/barren/Initialize()
	. = ..()
	color = pick( "#846996", "#7b4e99", "#924fab")
	icon_state = "barren_large"

/obj/structure/flora/rock/hell
	name = "rock"
	desc = "A volcanic rock, one of the few familiar things on this planet."
	icon_state = "basalt"
	icon = 'z_modular_event/mapgen/icons/obj/flora/rocks.dmi'
	resistance_flags = LAVA_PROOF
