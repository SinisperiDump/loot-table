extends Resource
class_name LootTableEntry

@export var item: Resource
@export var weight: float

func chance(total: float) -> float:
	return weight / total * 100
