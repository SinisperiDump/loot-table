extends Resource
class_name LootTable

@export var table_entries: Array[LootTableEntry]

func result():
	if table_entries.is_empty():
		assert(false, "No entries in the loot table.")

	var total: float = 0
	for loot_entry in table_entries:
		total += loot_entry.weight
	
	var rand = randf() * total
	
	for loot_entry in table_entries:
		if rand < loot_entry.weight:
			return loot_entry.item
		rand -= loot_entry.weight

func _print_chances():
	if table_entries.is_empty():
		assert(false, "No entries in the loot table.")

	var total: float = 0
	for loot_entry in table_entries:
		total += loot_entry.weight

	for loot_entry in table_entries:
		print("%s drop chance is %.2f%%." % [loot_entry.item.display_name, loot_entry.chance(total)])
