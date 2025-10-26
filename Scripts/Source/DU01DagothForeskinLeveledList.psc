Scriptname DU01DagothForeskinLeveledList extends Quest  

LeveledItem Property DeathItemHorse  Auto

LeveledItem Property DeathItemGiant  Auto  

LeveledItem Property DeathItemTrollFrost  Auto  


Ingredient Property DU01HorseForeskin  Auto  

Ingredient Property DU01GiantForeskin  Auto  

Ingredient Property DU01FrosttrollForeskin  Auto

Event OnInit()
	RegisterForSingleUpdate(2.0)
EndEvent

Event OnUpdate()
	Inject()
	UnregisterForUpdate()
	GotoState("active")
EndEvent


Function addXTimes(Ingredient ingr, LeveledItem itemList, int numTimes)

	int i = 0
	while (i < numTimes)
		itemList.AddForm(ingr, 1, 1)
    	i += 1
	endwhile

EndFunction
	
Function Inject()
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
EndFunction


State active
	Event OnUpdate()
		; Do nothing in here.
	EndEvent
EndState