extends "res://story/HumongousHollowRock.gd"

export (PoolIntArray) var minDensity = PoolIntArray([1000,1000,1000,1000,1000])

func canBeAt(pos):
	breakpoint
	var density = get_parent().getTargetDensityAt(pos)
	Debug.l("Testing for density for %s at %s: %s / %s" % [name,pos,density, minDensity])
	for n in range(minDensity.size()):
		if density[n] < minDensity[n]:
			return false
	return .canBeAt(pos)
