// 50 lines of code for simple concrete
/turf/simulated/ground/concrete
	name = "concrete"
	desc = "A flat expanse of artificial stone-like artificial material."
	icon = 'icons/turf/exterior/concrete.dmi'
	diggable = FALSE

var/global/ground_burnt_states = icon_states('icons/turf/exterior/burned.dmi')
/turf/simulated/ground/concrete/proc/set_burnt(var/skip_update)
	burnt = pick(global.ground_burnt_states)
	if(!skip_update)
		queue_icon_update()

var/global/ground_broken_states = icon_states('icons/turf/exterior/broken.dmi')
/turf/simulated/ground/concrete/proc/set_broken(var/skip_update)
	broken = pick(global.ground_broken_states)
	if(!skip_update)
		queue_icon_update()

/turf/simulated/ground/concrete/flooded
	flooded = TRUE
	color = COLOR_LIQUID_WATER

/turf/simulated/ground/concrete/Initialize(var/ml)
	if(broken)
		set_broken(TRUE)
	if(burnt)
		set_burnt(TRUE)
	. = ..()

/turf/simulated/ground/concrete/on_update_icon(update_neighbors)
	. = ..()
	if(broken)
		add_overlay(get_damage_overlay(broken, BLEND_MULTIPLY, 'icons/turf/exterior/broken.dmi'))
	if(burnt)
		add_overlay(get_damage_overlay(burnt, BLEND_MULTIPLY, 'icons/turf/exterior/burned.dmi'))

/turf/simulated/ground/concrete/reinforced
	name = "reinforced concrete"
	desc = "Stone-like artificial material. It has been reinforced with an unknown compound"

/turf/simulated/ground/concrete/reinforced/on_update_icon()
	. = ..()
	add_overlay("hexacrete")

/turf/simulated/ground/concrete/reinforced/damaged
	broken = TRUE

/turf/simulated/ground/concrete/reinforced/road
	name = "asphalt"
	color = COLOR_GRAY40