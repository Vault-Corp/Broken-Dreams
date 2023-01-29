// Ported from DesertRose2 - Outdoor floors

/turf/simulated/ground/sand/fallout
	name = "desert"
	icon = 'icons/turfs/wasteland.dmi'
	icon_state = "0"
	movement_delay = 0.5
	diggable = 1
	possible_states = 33

/turf/simulated/ground/dirt/fallout
	name = "dirt"
	icon = 'icons/turfs/ground.dmi'
	icon_state = "dirtfull"
	movement_delay = 0.3
	diggable = 1

// ----------------
// DESERT
// ----------------

/turf/simulated/ground/sand/fallout/sonora
	icon = 'icons/turfs/desert.dmi'
	icon_state = "desertsmooth"

/turf/simulated/ground/sand/fallout/sonora/coarse
	icon_state = "desertcoarse"
	movement_delay = 1

/turf/simulated/ground/sand/fallout/sonora/coarse/alt
	icon_state = "desertcoarse2"

/turf/simulated/ground/sand/fallout/sonora/rough
	icon_state = "desertrough"
	movement_delay = 1

/turf/simulated/ground/sand/fallout/sonora/cracked
	icon_state = "desertcracked"
	movement_delay = 1

/obj/effect/overlay/desert //Effects for blending different turfs
	name = "desert"
	icon = 'icons/turfs/desert.dmi'
	icon_state = "desertside"

/obj/effect/overlay/desert/corner
	name = "desert"
	icon_state = "desertcorner"

// --------------
// DIRT
// --------------

/turf/simulated/ground/dirt/fallout/sonora
	icon = 'icons/turfs/dirt.dmi'
	icon_state = "dirt"

/turf/simulated/ground/dirt/fallout/sonora/edge
	icon_state = "dirt_sandedge"

/turf/simulated/ground/dirt/fallout/sonora/corner
	icon_state = "dirt_sandcorner"

/obj/effect/overlay/dirt //Effects for blending different turfs
	name = "dirt"
	icon = 'icons/turfs/dirt.dmi'
	icon_state = "dirtside"

/obj/effect/overlay/dirt/corner
	icon_state = "dirtcorner"

// -----------
// SANDY DIRT
// -----------

/turf/simulated/ground/dirt/fallout/sandy
	name = "dirt"
	icon = 'icons/turfs/dirt.dmi'
	icon_state = "dirt_sandy"

/turf/simulated/ground/dirt/fallout/sandy/sandedge
	icon_state = "dirt_sandy_sandedge"

/turf/simulated/ground/dirt/fallout/sandy/sandcorner
	icon_state = "dirt_sandy_sandcorner"

/obj/effect/overlay/dirt/sandy_side //Effects for blending different turfs
	icon_state = "dirt_sandyside"

/obj/effect/overlay/dirt/sandy_corner
	icon_state = "dirt_sandycorner"

// ---------------
// OUTDOOR GRAVEL
// ---------------

/turf/simulated/ground/dry/fallout/gravel
	name = "gravel"
	icon = 'icons/turfs/gravel.dmi'
	icon_state = "gravel"
	diggable = 0

/turf/simulated/ground/dry/fallout/gravel/desertmerge
	name = "gravel"
	icon_state = "desertmerge"

/obj/effect/overlay/gravel/dirtmerge //Effects for blending different turfs
	name = "gravel"
	icon = 'icons/turfs/gravel.dmi'
	icon_state = "gravelside"

/obj/effect/overlay/dirt/gravel/corner
	icon_state = "gravelcorner"

// ---------------
// ROAD & SIDEWALK
// ---------------

/turf/simulated/ground/concrete/fallout //Really need to figure out a way to get all the icon states in here
	name = "road"
	icon_state = "innermiddle"
	icon = 'icons/turfs/asphalt.dmi'
	diggable = 0

/turf/simulated/ground/concrete/fallout/sidewalk
	name = "sidewalk"
	icon_state = "outermiddle"
	icon = 'icons/turfs/sidewalk.dmi'

// -------
// WATER
// -------

/turf/simulated/ground/fallout/water
	name = "river water"
	desc = "Shallow river water."
	icon = 'icons/turf/floors.dmi'
	icon_state = "riverwater_motion"
	movement_delay = 2
	diggable = 0

/turf/simulated/ground/fallout/water/river_slow
	icon = 'icons/turfs/water.dmi'
	icon_state = "river_slow"

// -------
// RUINS
// -------

/turf/simulated/ground/fallout/ruins
	name = "ruins"
	desc = "It's just a pile of concrete rubble."
	icon_state = "rubblefull"
	diggable = 0

// -------
// MISC TURFS
// -------

/turf/simulated/ground/fallout/inside
	name = "a bug - call the devs"
	icon_state = "rockfloor1"
	icon = 'icons/turfs/mining.dmi'
	diggable = 0


/turf/simulated/ground/fallout/inside/mountain
	name = "cave"
	icon_state = "rockfloor1"
	icon = 'icons/turfs/mining.dmi'

/obj/effect/overlay/rockfloor_side
	name = "cave"
	icon = 'icons/turfs/smoothing.dmi'
	icon_state = "rockfloor_side"

/turf/simulated/ground/fallout/inside/dirt
	name = "dirt"
	icon_state = "dirtfull"
	movement_delay = 0.2

/turf/simulated/ground/fallout/inside/subway
	name = "subway tunnel"
	icon = 'icons/turfs/ground.dmi'
	icon_state = "railsnone"

/obj/effect/overlay/railsnone_side
	name = "cave"
	icon = 'icons/turfs/smoothing.dmi'
	icon_state = "railsnone_side"

