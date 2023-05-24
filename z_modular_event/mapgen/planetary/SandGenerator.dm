/datum/advanced_map_generator/planet_generator/sand
	mountain_height = 0.8
	perlin_zoom = 65

	primary_area_type = /area/overmap_encounter/planetoid/sand

	// these are largely placeholder biomes and could do with being improved
	biome_table = list(
		BIOME_COLDEST = list(
			BIOME_LOWEST_HUMIDITY = /datum/adv_biome/sand,
			BIOME_LOW_HUMIDITY = /datum/adv_biome/sand,
			BIOME_MEDIUM_HUMIDITY = /datum/adv_biome/sand/grass/dead,
			BIOME_HIGH_HUMIDITY = /datum/adv_biome/sand/icecap,
			BIOME_HIGHEST_HUMIDITY = /datum/adv_biome/sand/icecap
		),
		BIOME_COLD = list(
			BIOME_LOWEST_HUMIDITY = /datum/adv_biome/sand,
			BIOME_LOW_HUMIDITY = /datum/adv_biome/sand/riverbed,
			BIOME_MEDIUM_HUMIDITY = /datum/adv_biome/sand/wasteland,
			BIOME_HIGH_HUMIDITY = /datum/adv_biome/sand/wasteland,
			BIOME_HIGHEST_HUMIDITY = /datum/adv_biome/sand/icecap
		),
		BIOME_WARM = list(
			BIOME_LOWEST_HUMIDITY = /datum/adv_biome/sand,
			BIOME_LOW_HUMIDITY = /datum/adv_biome/sand,
			BIOME_MEDIUM_HUMIDITY = /datum/adv_biome/sand/riverbed,
			BIOME_HIGH_HUMIDITY = /datum/adv_biome/sand,
			BIOME_HIGHEST_HUMIDITY = /datum/adv_biome/sand
		),
		BIOME_TEMPERATE = list(
			BIOME_LOWEST_HUMIDITY = /datum/adv_biome/sand,
			BIOME_LOW_HUMIDITY = /datum/adv_biome/sand/riverbed,
			BIOME_MEDIUM_HUMIDITY = /datum/adv_biome/sand/grass/dead,
			BIOME_HIGH_HUMIDITY = /datum/adv_biome/sand/grass,
			BIOME_HIGHEST_HUMIDITY = /datum/adv_biome/sand/grass
		),
		BIOME_HOT = list(
			BIOME_LOWEST_HUMIDITY =/datum/adv_biome/sand/acid,
			BIOME_LOW_HUMIDITY = /datum/adv_biome/sand/wasteland,
			BIOME_MEDIUM_HUMIDITY = /datum/adv_biome/sand/riverbed,
			BIOME_HIGH_HUMIDITY = /datum/adv_biome/sand,
			BIOME_HIGHEST_HUMIDITY = /datum/adv_biome/sand/grass
		),
		BIOME_HOTTEST = list(
			BIOME_LOWEST_HUMIDITY = /datum/adv_biome/sand/acid/total,
			BIOME_LOW_HUMIDITY = /datum/adv_biome/sand/acid,
			BIOME_MEDIUM_HUMIDITY = /datum/adv_biome/sand/riverbed,
			BIOME_HIGH_HUMIDITY = /datum/adv_biome/sand/wasteland,
			BIOME_HIGHEST_HUMIDITY = /datum/adv_biome/sand
		)
	)

	cave_biome_table = list(
		BIOME_COLDEST_CAVE = list(
			BIOME_LOWEST_HUMIDITY = /datum/adv_biome/cave/sand/volcanic/acidic,
			BIOME_LOW_HUMIDITY = /datum/adv_biome/cave/sand/deep,
			BIOME_MEDIUM_HUMIDITY = /datum/adv_biome/cave/sand/deep,
			BIOME_HIGH_HUMIDITY = /datum/adv_biome/cave/sand,
			BIOME_HIGHEST_HUMIDITY = /datum/adv_biome/cave/sand
		),
		BIOME_COLD_CAVE = list(
			BIOME_LOWEST_HUMIDITY = /datum/adv_biome/cave/sand/volcanic/acidic,
			BIOME_LOW_HUMIDITY = /datum/adv_biome/cave/sand/volcanic,
			BIOME_MEDIUM_HUMIDITY = /datum/adv_biome/cave/sand/deep,
			BIOME_HIGH_HUMIDITY = /datum/adv_biome/cave/sand/deep,
			BIOME_HIGHEST_HUMIDITY = /datum/adv_biome/cave/sand,
		),
		BIOME_WARM_CAVE = list(
			BIOME_LOWEST_HUMIDITY = /datum/adv_biome/cave/sand/volcanic/acidic,
			BIOME_LOW_HUMIDITY = /datum/adv_biome/cave/sand/volcanic,
			BIOME_MEDIUM_HUMIDITY = /datum/adv_biome/cave/sand/deep,
			BIOME_HIGH_HUMIDITY = /datum/adv_biome/cave/sand,
			BIOME_HIGHEST_HUMIDITY = /datum/adv_biome/cave/sand
		),
		BIOME_HOT_CAVE = list(
			BIOME_LOWEST_HUMIDITY = /datum/adv_biome/cave/sand/volcanic/lava,
			BIOME_LOW_HUMIDITY = /datum/adv_biome/cave/sand/volcanic,
			BIOME_MEDIUM_HUMIDITY = /datum/adv_biome/cave/sand/volcanic,
			BIOME_HIGH_HUMIDITY = /datum/adv_biome/cave/sand/deep,
			BIOME_HIGHEST_HUMIDITY = /datum/adv_biome/cave/sand,
		)
	)

/datum/adv_biome/sand
	open_turf_types = list(/turf/open/misc/asteroid/whitesands/lit = 1)
	flora_spawn_chance = 3
	flora_spawn_list = list(
		/obj/structure/flora/ash/leaf_shroom = 4 ,
		/obj/structure/flora/ash/cap_shroom = 4 ,
		/obj/structure/flora/ash/stem_shroom = 4 ,
	)
	feature_spawn_chance = 0.1
	feature_spawn_list = list(/obj/structure/geyser/random = 1, /obj/structure/elite_tumor = 2)
	mob_spawn_chance = 4
	mob_spawn_list = list(
		/mob/living/simple_animal/hostile/asteroid/goliath/beast/random = 50,
		/mob/living/simple_animal/hostile/asteroid/basilisk/whitesands = 40,
		/mob/living/simple_animal/hostile/asteroid/hivelord/legion/random = 30,
		/mob/living/simple_animal/hostile/asteroid/whitesands/survivor/random = 25,
	)

/datum/adv_biome/sand/wasteland
	open_turf_types = list(/turf/open/misc/asteroid/whitesands/lit = 50, /turf/open/misc/asteroid/whitesands/dried/lit = 40, /turf/closed/mineral/random/whitesands = 20, /turf/closed/wall/mineral/titanium/survival/pod = 1, /turf/closed/wall/rust = 1)
	flora_spawn_chance = 20
	flora_spawn_list = list(
		/obj/structure/flora/ash/leaf_shroom = 4,
		/obj/structure/flora/ash/cap_shroom = 4,
		/obj/structure/flora/ash/stem_shroom = 4,
		/obj/effect/decal/remains/human = 4,
		/obj/effect/spawner/lootdrop/maintenance = 40,
	)

/datum/adv_biome/sand/grass
	open_turf_types = list(/turf/open/misc/asteroid/whitesands/grass/lit = 1)
	flora_spawn_chance = 5
	flora_spawn_list = list(
		/obj/structure/flora/ash/cacti = 2,
		/obj/structure/flora/ash/fern = 4,
		/obj/structure/flora/tree/tall/whitesands = 4,
		/obj/structure/flora/rock = 3,
		/obj/structure/flora/rock/pile = 3,
	)
	mob_spawn_chance = 1
	mob_spawn_list = list(
		/mob/living/simple_animal/hostile/asteroid/whitesands/survivor/random = 1,
	)

/datum/adv_biome/sand/grass/dead
	open_turf_types = list(/turf/open/misc/asteroid/whitesands/grass/dead/lit = 1)
	flora_spawn_list = list(
		/obj/structure/flora/ash/leaf_shroom = 2,
		/obj/structure/flora/ash/cap_shroom = 2,
		/obj/structure/flora/ash/stem_shroom = 2,
		/obj/structure/flora/ash/fern = 4,
		/obj/structure/flora/tree/dead/barren = 4,
		/obj/structure/flora/rock = 3,
		/obj/structure/flora/rock/pile = 3,
	)

/datum/adv_biome/sand/icecap
	open_turf_types = list(/turf/open/misc/asteroid/whitesands/lit = 1, /turf/open/misc/asteroid/snow/lit/whitesands = 5)
	flora_spawn_chance = 4
	mob_spawn_chance = 1
	flora_spawn_list = list(
		/obj/structure/flora/ash/leaf_shroom = 2 ,
		/obj/structure/flora/ash/cap_shroom = 2 ,
		/obj/structure/flora/ash/stem_shroom = 2 ,
		/obj/structure/flora/rock = 3,
		/obj/structure/flora/rock/pile = 3,
	)

/datum/adv_biome/sand/riverbed
	open_turf_types = list(/turf/open/misc/asteroid/whitesands/dried/lit = 1)
	flora_spawn_chance = 0
	mob_spawn_list = list(
		/mob/living/simple_animal/hostile/asteroid/goliath/beast/random = 40,
		/mob/living/simple_animal/hostile/asteroid/basilisk/whitesands = 30,
		/mob/living/simple_animal/hostile/asteroid/hivelord/legion/random = 20,
		/mob/living/simple_animal/hostile/asteroid/whitesands/survivor/random = 40,
	)

/datum/adv_biome/sand/acid //plains
	open_turf_types = list(/turf/open/misc/asteroid/whitesands/lit = 10, /turf/open/acid/whitesands = 1)

/datum/adv_biome/sand/acid/total
	open_turf_types = list(/turf/open/acid/whitesands = 1)
	flora_spawn_chance = 0
	feature_spawn_chance = 0
	mob_spawn_chance = 0

/datum/adv_biome/cave/sand
	closed_turf_types = list(/turf/closed/mineral/random/whitesands = 1)
	open_turf_types = list(/turf/open/misc/asteroid/whitesands = 5, /turf/open/misc/asteroid/whitesands/dried = 1)
	flora_spawn_chance = 4
	flora_spawn_list = list(
		/obj/structure/flora/rock = 4,
		/obj/structure/flora/rock/pile = 4,
		/obj/structure/flora/ash/fern = 2,
		/obj/structure/flora/ash/puce = 1,
	)
	feature_spawn_list = list(/obj/structure/geyser/random = 1, /obj/structure/elite_tumor = 2)
	mob_spawn_chance = 4
	mob_spawn_list = list(
		/mob/living/simple_animal/hostile/asteroid/goliath/beast/random = 50,
		/mob/living/simple_animal/hostile/asteroid/basilisk/whitesands = 40,
		/mob/living/simple_animal/hostile/asteroid/hivelord/legion/random = 30,
		/mob/living/simple_animal/hostile/asteroid/goldgrub = 10,
	)

/datum/adv_biome/cave/sand/deep
	open_turf_types = list(/turf/open/misc/asteroid/whitesands/dried = 1)
	mob_spawn_chance = 4
	mob_spawn_list = list(
		/mob/living/simple_animal/hostile/asteroid/goliath/beast/random = 50,
		/obj/structure/spawner/lavaland/goliath = 6,
		/mob/living/simple_animal/hostile/asteroid/basilisk/whitesands = 40,
		/obj/structure/spawner/lavaland/whitesandsbasilisk = 6,
		/mob/living/simple_animal/hostile/asteroid/hivelord/legion/random = 30,
		/obj/structure/spawner/lavaland/legion = 3,
		/obj/structure/spawner/lavaland/legion = 3,
		/mob/living/simple_animal/hostile/asteroid/goldgrub = 10,
	)

/datum/adv_biome/cave/sand/volcanic
	open_turf_types = list(/turf/open/misc/asteroid/whitesands/dried = 1)
	mob_spawn_chance = 2

/datum/adv_biome/cave/sand/volcanic/lava
	open_turf_types = list(/turf/open/misc/asteroid/whitesands/dried = 7, /turf/open/lava = 1)

/datum/adv_biome/cave/sand/volcanic/acidic
	open_turf_types = list(/turf/open/misc/asteroid/whitesands/dried = 8, /turf/open/acid/whitesands = 1)
