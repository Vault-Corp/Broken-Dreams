// Why there were no "normal" ground floor types before I do not know ~Cupa
/turf/simulated/ground/dirt
	name = "dirt"
	icon = 'icons/turf/exterior/dirt.dmi'
	icon_state = "0"
	footstep_type = /decl/footsteps/asteroid
	icon_edge_layer = EXT_EDGE_DIRT

/turf/simulated/ground/sand
	name = "sand"
	desc = "The coarsest."
	dirt_color = "#ae9e66"
	footstep_type = /decl/footsteps/sand
	icon = 'icons/turf/exterior/sand.dmi'
	icon_edge_layer = EXT_EDGE_SAND
	icon_has_corners = TRUE
	possible_states = 5

/turf/simulated/ground/mud
	name = "mud"
	desc = "Thick, claggy and waterlogged."
	icon = 'icons/turf/exterior/mud_light.dmi'
	icon_edge_layer = EXT_EDGE_MUD
	footstep_type = /decl/footsteps/mud

/turf/simulated/ground/mud/dark
	icon = 'icons/turf/exterior/mud_dark.dmi'
	icon_edge_layer = EXT_EDGE_MUD_DARK

/turf/simulated/ground/dry
	name = "dry mud"
	desc = "Should have stayed hydrated."
	dirt_color = "#ae9e66"
	icon = 'icons/turf/exterior/seafloor.dmi'

/turf/simulated/ground/grass
	name = "grass"
	desc = "A thousand blades of vicious sharpness."
	icon = 'icons/turf/flooring/grass.dmi'
	icon_state = "grass0"
	icon_edge_layer = EXT_EDGE_GRASS_WILD
	icon_has_corners = TRUE
