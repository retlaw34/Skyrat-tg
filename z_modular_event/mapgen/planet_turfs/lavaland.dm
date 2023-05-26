/turf/open/misc/asteroid/basalt
	name = "volcanic floor"
	baseturfs = /turf/open/misc/asteroid/basalt
//	icon = 'icons/turf/floors.dmi'
	//icon_state = "basalt"
//	base_icon_state = "basalt"
	floor_variance = 15

/turf/open/misc/asteroid/basalt/lava_land_surface/lit
	light_range = 2
	light_power = 0.6
	light_color = LIGHT_COLOR_FIRE

/turf/open/misc/asteroid/basalt/lava //lava underneath
	baseturfs = /turf/open/lava/smooth

/turf/open/misc/asteroid/basalt/airless
	initial_gas_mix = AIRLESS_ATMOS

/turf/open/misc/asteroid/basalt/Initialize(mapload, inherited_virtual_z)
	. = ..()
	set_basalt_light(src)
/*
/proc/set_basalt_light(turf/open/floor/B)
	switch(B.icon_state)
		if("basalt1", "basalt2", "basalt3")
			B.set_light(2, 0.6, LIGHT_COLOR_LAVA) //more light
		if("basalt5", "basalt9")
			B.set_light(1.4, 0.6, LIGHT_COLOR_LAVA) //barely anything!
*/
///////Surface. The surface is warm, but survivable without a suit. Internals are required. The floors break to chasms, which drop you into the underground.

/turf/open/misc/asteroid/basalt/lava_land_surface
	initial_gas_mix = LAVALAND_DEFAULT_ATMOS
	planetary_atmos = TRUE
	baseturfs = /turf/open/lava/smooth/lava_land_surface

/turf/open/misc/asteroid/basalt/lava_land_surface/icecropolis/inside
	initial_gas_mix = "o2=22;n2=82;TEMP=293.15"
	planetary_atmos = FALSE
	baseturfs = /turf/open/indestructible/necropolis/air

/turf/open/misc/asteroid/basalt/purple
	icon = 'z_modular_event/mapgen/icons/turfs/lavaland_purple.dmi'
	baseturfs = /turf/open/misc/asteroid/basalt/purple
	turf_type = /turf/open/misc/asteroid/basalt/purple
	initial_gas_mix = LAVALAND_DEFAULT_ATMOS
	planetary_atmos = TRUE

/turf/open/misc/asteroid/basalt/purple/lit
	light_range = 2
	light_power = 0.6
	light_color = LIGHT_COLOR_FIRE

/turf/open/misc/asteroid/purple
	name = "ashen sand"
	desc = "Sand, tinted by the chemicals in the atmosphere to an uncanny shade of purple."
	icon = 'z_modular_event/mapgen/icons/turfs/lavaland_purple.dmi'
	baseturfs = /turf/open/misc/asteroid/purple
	turf_type = /turf/open/misc/asteroid/basalt/purple
	initial_gas_mix = LAVALAND_DEFAULT_ATMOS
	planetary_atmos = TRUE

/turf/open/misc/asteroid/purple/lit
	light_range = 2
	light_power = 0.3
	light_color = LIGHT_COLOR_FIRE

/turf/open/misc/grass/lava
	name = "ungodly grass"
	desc = "Common grass, tinged to unnatural colours by chemicals in the atmosphere."
	baseturfs = /turf/open/misc/grass/lava
	initial_gas_mix = LAVALAND_DEFAULT_ATMOS
	icon_state = "grass-255"
	base_icon_state = "grass"
	planetary_atmos = TRUE
	icon = 'z_modular_event/mapgen/icons/turfs/lava_grass_red.dmi'
	smooth_icon = 'z_modular_event/mapgen/icons/turfs/lava_grass_red.dmi'
	light_range = 2
	light_power = 0.6
	light_color = LIGHT_COLOR_FIRE
	gender = PLURAL

/turf/open/misc/grass/lava/orange
	icon = 'z_modular_event/mapgen/icons/turfs/lava_grass_orange.dmi'
	smooth_icon = 'z_modular_event/mapgen/icons/turfs/lava_grass_orange.dmi'
	baseturfs = /turf/open/misc/grass/lava/orange

/turf/open/misc/grass/lava/purple
	baseturfs = /turf/open/misc/grass/lava/purple
	icon = 'z_modular_event/mapgen/icons/turfs/lava_grass_purple.dmi'
	smooth_icon = 'z_modular_event/mapgen/icons/turfs/lava_grass_purple.dmi'

/turf/open/misc/moss
	name = "mossy carpet"
	desc = "When the forests burned away and the sky grew dark, the moss learned to feed on the falling ash."
	icon = 'icons/turf/mining.dmi'
	gender = PLURAL

	baseturfs = /turf/open/misc/ashplanet //I assume this will be a chasm eventually, once this becomes an actual surface
	initial_gas_mix = LAVALAND_DEFAULT_ATMOS
	planetary_atmos = TRUE
	icon_state = "moss"
	icon = 'z_modular_event/mapgen/icons/turfs/lava_moss.dmi'
	base_icon_state = "moss"
	bullet_bounce_sound = null
	footstep = FOOTSTEP_GRASS
	barefootstep = FOOTSTEP_GRASS
	clawfootstep = FOOTSTEP_GRASS
	heavyfootstep = FOOTSTEP_GENERIC_HEAVY
	layer = HIGH_TURF_LAYER
	gender = PLURAL
	light_power = 1
	light_range = 2

