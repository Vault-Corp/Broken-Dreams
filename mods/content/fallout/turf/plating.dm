// Ported from DesertRose2 - Indoor plating and premade tiles

/turf/simulated/floor/f13
	name = "a fallout floor"
	desc = "it's a floor."

/turf/simulated/floor/f13/wooden
	name = "house base"
	icon_state = "housebase"
	icon = 'icons/turfs/ground.dmi'

/turf/simulated/floor/f13/wooden/house/burn_tile()
	icon_state = "housebase-broken"
	..()

/turf/simulated/floor/f13/tunnel
	name = "metal floor"
	desc = "A metal floor. Rusty!"
	icon_state = "tunneldirty"
	icon = 'icons/turfs/ground.dmi'

//Premade tiles

/turf/simulated/floor/f13/wooden/house
	name = "wooden floor"
	desc = "A house's foundation."
	icon_state = "housewood1"
	initial_flooring = /decl/flooring/f13/wood1

/turf/simulated/floor/f13/wooden/house/alt2
	icon_state = "housewood2"
	initial_flooring = /decl/flooring/f13/wood2

/turf/simulated/floor/f13/wooden/house/alt3
	icon_state = "housewood3"
	initial_flooring = /decl/flooring/f13/wood3

/turf/simulated/floor/f13/wooden/house/damaged1
	icon_state = "housewood1-broken"
	initial_flooring = /decl/flooring/f13/wood1/damaged

/turf/simulated/floor/f13/wooden/house/damaged2
	icon_state = "housewood2-broken"
	initial_flooring = /decl/flooring/f13/wood2/damaged

/turf/simulated/floor/f13/wooden/house/damaged3
	icon_state = "housewood3-broken"
	initial_flooring = /decl/flooring/f13/wood3/damaged