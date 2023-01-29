// Ported from DesertRose2 - Floor tiles

/decl/flooring/f13
	name = "floor"
	icon_base = "floor"
	icon = 'icons/turfs/floors.dmi'

/decl/flooring/f13/wood1
	name = "wooden floor"
	icon = 'icons/turfs/ground.dmi'
	icon_base = "housewood1"
	flags = TURF_REMOVE_SCREWDRIVER | TURF_CAN_BREAK | TURF_CAN_BURN
	descriptor = "planks"
	build_type = /obj/item/stack/tile/wood
	has_damage_range = 6
	damage_temperature = T0C+200
	footstep_type = /decl/footsteps/wood

/decl/flooring/f13/wood1/damaged
	name = "damaged wooden floor"
	icon_base = "housewood1-broken"

/decl/flooring/f13/wood2
	icon_base = "housewood2"

/decl/flooring/f13/wood2/damaged
	name = "damaged wooden floor"
	icon_base = "housewood2-broken"

/decl/flooring/f13/wood3
	icon_base = "housewood3"

/decl/flooring/f13/wood3/damaged
	name = "damaged wooden floor"
	icon_base = "housewood3-broken"
