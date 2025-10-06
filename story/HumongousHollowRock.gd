extends "res://story/HumongousHollowRock.gd"

export var density = 0.0

func canBeAt(pos):
	var i = get_parent().getTargetDensityAt(pos)
	if i > density:
		breakpoint
		return .canBeAt(pos)
	else:
		return false
