# loot-table
> Loot Tables for all your Godot needs

## Loot Table Entry

Entry for a loot table.  
Gets weighted against other entries.

### item: Resource

Resource that will be returned if this entry gets selcted.

### weight: float

Change this entry will be selected against others.  

For example:
- Apple, weight: 50
- Banana, weight: 40
- Pear: weight: 10

Would mean changes of getting apple is 50% and so on.  
Weights don't need to add up to 100 they can be any positive number.

## Loot Table

### table_entries: Array[LootTableEntry]

Contains all entries for this loot table.

### result()

Rolls the loot table and returns the resource from randomly selected entry.

### _print_chances()

Debug function that prints out chances of all entries.
