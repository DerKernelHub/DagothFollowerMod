;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 15
Scriptname DU01DagothForeskinQuest Extends Quest Hidden

;BEGIN ALIAS PROPERTY DU01FQBaegothAlias
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_DU01FQBaegothAlias Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY DU01FQPlayerAlias
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_DU01FQPlayerAlias Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY DU01FQDagoth
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_DU01FQDagoth Auto
;END ALIAS PROPERTY

;BEGIN FRAGMENT Fragment_5
Function Fragment_5()
;BEGIN CODE
;Troll Foreskin check
pDU01FQCount.Value += 1
Debug.Messagebox("Troll <Global=DU01FQCount>")
if pDU01FQCount.Value >= 3
SetStage(80) 
endif
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_0
Function Fragment_0()
;BEGIN AUTOCAST TYPE DU01FQScript
Quest __temp = self as Quest
DU01FQScript kmyQuest = __temp as DU01FQScript
;END AUTOCAST
;BEGIN CODE
SetObjectiveDisplayed(0)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_6
Function Fragment_6()
;BEGIN CODE
;Horse Foreskin check
pDU01FQCount.Value += 1
Debug.Messagebox("Horse <Global=DU01FQCount>")
if pDU01FQCount.Value >= 3
SetStage(80) 
endif
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_7
Function Fragment_7()
;BEGIN CODE
SetObjectiveDisplayed(4)
SetObjectiveDisplayed(1,0)
SetObjectiveDisplayed(2,0)
SetObjectiveDisplayed(3,0)
SetObjectiveCompleted(1,1)
SetObjectiveCompleted(2,1)
SetObjectiveCompleted(3,1)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_4
Function Fragment_4()
;BEGIN CODE
;Giant Foreskin check
pDU01FQCount.Value += 1
Debug.Messagebox("Gaint <Global=DU01FQCount>")
if pDU01FQCount.Value >= 3
SetStage(80) 
endif
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_9
Function Fragment_9()
;BEGIN CODE
SetObjectiveCompleted(4)
SetObjectiveDisplayed(5)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_11
Function Fragment_11()
;BEGIN CODE
PlayerREF.DoCombatSpellApply(DU01DagothSwapSpell, PlayerREF)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_14
Function Fragment_14()
;BEGIN CODE
SetObjectiveCompleted(0)
SetObjectiveDisplayed(1)
SetObjectiveDisplayed(2)
SetObjectiveDisplayed(3)
SetObjectiveDisplayed(4,0)
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

GlobalVariable Property pDU01FQCount Auto Conditional
GlobalVariable Property DU01IsBaegoth Auto
Actor Property DU01DagothUr Auto
Actor Property DU01BaegothUr Auto
Actor Property PlayerREF Auto
Spell Property DU01DagothSwapSpell Auto
LeveledItem Property pDeathItemHorse  Auto
LeveledItem Property pDeathItemGiant  Auto
LeveledItem Property pDeathItemTrollFrost  Auto
Ingredient Property pDU01HorseForeskin  Auto  
Ingredient Property pDU01GiantForeskin  Auto  
Ingredient Property pDU01FrosttrollForeskin  Auto
