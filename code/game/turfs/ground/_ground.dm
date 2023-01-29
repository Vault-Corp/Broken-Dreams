/turf/simulated/ground
	name = "dirt"
	icon = 'icons/turf/exterior/dirt.dmi'
	icon_state = "0"
	permit_ao = TRUE
	thermal_conductivity = 0.040
	heat_capacity = 10000
	explosion_resistance = 1

	// Damage to flooring
	var/broken
	var/burnt
	// Amalgamation of /turf/exterior on top
	var/diggable = 0
	var/dirt_color = "#7c5e42"
	var/possible_states = 0
	var/icon_edge_layer = -1
	var/icon_edge_states
	var/icon_has_corners = FALSE
	// Generica
	var/base_name = "dirt"
	var/base_desc = "Dirt, conveniently in a 1 by 1 meter grid."
	var/base_icon = 'icons/turf/exterior/dirt.dmi'
	var/base_icon_state = "0"
	var/base_color = COLOR_WHITE
	// Flooring data
	var/flooring_override
	var/initial_flooring
	var/decl/flooring/flooring
	var/lava = 0

/turf/simulated/ground/Initialize(mapload, no_update_icon = FALSE)

	if(base_color)
		color = base_color
	else
		color = null

	if(possible_states > 0)
		icon_state = "[rand(0, possible_states)]"

	. = ..(mapload)	// second param is our own, don't pass to children

	var/air_graphic = get_air_graphic()
	if(length(air_graphic))
		add_vis_contents(src, air_graphic)

	if (no_update_icon)
		return

	// If this is a mapload, then our neighbors will be updating their own icons too -- doing it for them is rude.
	if(mapload)
		update_icon()
	else
		for (var/turf/T in RANGE_TURFS(src, 1))
			if(TICK_CHECK) // not CHECK_TICK -- only queue if the server is overloaded
				T.queue_icon_update()
			else
				T.update_icon()

/turf/simulated/ground/is_plating()
	return !flooring

/turf/simulated/ground/get_base_movement_delay()
	return flooring?.movement_delay || ..()

/turf/simulated/ground/protects_atom(var/atom/A)
	return (A.level <= 1 && !is_plating()) || ..()

/turf/simulated/ground/levelupdate()
	for(var/obj/O in src)
		O.hide(O.hides_under_flooring() && src.flooring)

	if(flooring)
		layer = TURF_LAYER
	else
		layer = PLATING_LAYER

/turf/simulated/ground/can_engrave()
	return (!flooring || flooring.can_engrave)

/turf/simulated/ground/on_update_icon()
	. = ..() // Recalc AO and flooding overlay.
	cut_overlays()
	if(LAZYLEN(decals))
		add_overlay(decals)

	if(icon_edge_layer < 0)
		return

	var/neighbors = 0
	for(var/direction in global.cardinal)
		var/turf/exterior/turf_to_check = get_step(src,direction)
		if(!turf_to_check || turf_to_check.density)
			continue
		if(istype(turf_to_check, type))
			neighbors |= direction
			continue
		if(!istype(turf_to_check) || icon_edge_layer > turf_to_check.icon_edge_layer)
			var/image/I = image(icon, "edge[direction][icon_edge_states > 0 ? rand(0, icon_edge_states) : ""]")
			I.layer = layer + icon_edge_layer
			switch(direction)
				if(NORTH)
					I.pixel_y += world.icon_size
				if(SOUTH)
					I.pixel_y -= world.icon_size
				if(EAST)
					I.pixel_x += world.icon_size
				if(WEST)
					I.pixel_x -= world.icon_size
			add_overlay(I)

	if(icon_has_corners)
		for(var/direction in global.cornerdirs)
			var/turf/exterior/turf_to_check = get_step(src,direction)
			if(!isturf(turf_to_check) || turf_to_check.density || istype(turf_to_check, type))
				continue

			if(!istype(turf_to_check) || icon_edge_layer > turf_to_check.icon_edge_layer)
				var/draw_state
				var/res = (neighbors & direction)
				if(res == 0)
					draw_state = "edge[direction]"
				else if(res == direction)
					draw_state = "corner[direction]"
				if(draw_state && check_state_in_icon(draw_state, icon))
					var/image/I = image(icon, draw_state)
					I.layer = layer + icon_edge_layer
					if(direction & NORTH)
						I.pixel_y += world.icon_size
					else if(direction & SOUTH)
						I.pixel_y -= world.icon_size
					if(direction & EAST)
						I.pixel_x += world.icon_size
					else if(direction & WEST)
						I.pixel_x -= world.icon_size
					add_overlay(I)

/turf/simulated/ground/attackby(obj/item/C, mob/user)

	if(diggable && IS_SHOVEL(C))
		if(C.do_tool_interaction(TOOL_SHOVEL, user, src, 5 SECONDS))
			new /obj/structure/pit(src)
			diggable = FALSE
		else
			to_chat(user, SPAN_NOTICE("You stop shoveling."))
		return TRUE

	. = ..()
