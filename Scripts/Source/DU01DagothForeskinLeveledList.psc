Scriptname DU01DagothForeskinLeveledList extends Quest  

LeveledItem Property DeathItemHorse  Auto

LeveledItem Property DeathItemGiant  Auto  

LeveledItem Property DeathItemTrollFrost  Auto  


Ingredient Property DU01HorseForeskin  Auto  

Ingredient Property DU01GiantForeskin  Auto  

Ingredient Property DU01FrosttrollForeskin  Auto

Function addXTimes(Ingredient ingr, LeveledItem itemList, int numTimes)

	int i = 0
	while (i < numTimes)
		itemList.AddForm(ingr, 1, 1)
    	i += 1
	endwhile

EndFunction

Event OnInit()
	;do on startup
      ;To increase chances, add foreskin multiple times
	;Cannot get length of leveledlist without SKSE, so this will have to suffice. Add 3 forms per type of foreskin?
	;Property, LevelToStartAddingAt, HowManyFormsToAdd
	;ex: DeathItemGiant.AddForm(DU01GiantForeskin, 1, 1)

	;lower drop chance, add many times
	addXTimes(DU01HorseForeskin, DeathItemHorse, 3)

	;these have higher drop chances, only add once
	addXTimes(DU01GiantForeskin, DeathItemGiant, 1)
	addXTimes(DU01FrosttrollForeskin, DeathItemTrollFrost, 1)

	;Debug.Trace("OnInit code started")
       ;Debug.Notification("ForeskinLeveledList: Injecting!")
EndEvent