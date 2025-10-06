extends "res://story/HumongousHollowRock.gd"

export (PoolIntArray) var maxDensity = [1000,1000,1000,1000,1000]

func canBeAt(pos):
	breakpoint
	var density = get_parent().getTargetDensityAt(pos)
	Debug.l("Testing for density for %s at %s: %s / %s" % [name,pos,density, maxDensity])
	for n in range(maxDensity.size()):
		if density[n] > maxDensity[n]:
			return false
	return .canBeAt(pos)
