Scriptname DU01FQScript extends Quest

Ingredient Property pDU01FrosttrollForeskin Auto Conditional
Ingredient Property pDU01GiantForeskin Auto Conditional
Ingredient Property pDU01HorseForeskin Auto Conditional
MiscObject Property pDU01ForeskinPotion Auto Conditional
GlobalVariable Property pDU01GFCount Auto Conditional
GlobalVariable Property pDU01HFCount Auto Conditional
GlobalVariable Property pDU01TFCount Auto Conditional
GlobalVariable Property pDU01FPCount Auto Conditional
Quest Property pDU01FQ Auto Conditional

Function GiantForeskinCounted()

	float CurrentCount = Game.GetPlayer().GetItemCount(pDU01GiantForeskin)

	pDU01GFCount.Value = CurrentCount
	UpdateCurrentInstanceGlobal(pDU01GFCount)
	if CurrentCount >= 1
		pDU01FQ.SetObjectiveCompleted(1,1)
	elseif CurrentCount < 1
       	pDU01FQ.SetObjectiveCompleted(1,0)
      		pDU01FQ.SetObjectiveDisplayed(1,true,true)
		pDU01FQ.SetStage(10)
   	 endif

endFunction

Function TrollForeskinCounted()

	float CurrentCount = Game.GetPlayer().GetItemCount(pDU01FrosttrollForeskin)

	pDU01TFCount.Value = CurrentCount
	UpdateCurrentInstanceGlobal(pDU01TFCount)
	if CurrentCount >= 1
		pDU01FQ.SetObjectiveCompleted(2,1)
	elseif CurrentCount < 1
       	pDU01FQ.SetObjectiveCompleted(2,0)
      		pDU01FQ.SetObjectiveDisplayed(2,true,true)
		pDU01FQ.SetStage(10)
   	 endif

endFunction

Function HorseForeskinCounted()

	float CurrentCount = Game.GetPlayer().GetItemCount(pDU01HorseForeskin)

	pDU01HFCount.Value = CurrentCount
	UpdateCurrentInstanceGlobal(pDU01HFCount)
	if CurrentCount >= 1
		pDU01FQ.SetObjectiveCompleted(3,1)
	elseif CurrentCount < 1
       	pDU01FQ.SetObjectiveCompleted(3,0)
      		pDU01FQ.SetObjectiveDisplayed(3,true,true)
		pDU01FQ.SetStage(10)
   	 endif

endFunction

Function ForeskinPotionCounted()

    float CurrentCount = Game.GetPlayer().GetItemCount(pDU01ForeskinPotion)
    if (Game.GetPlayer().GetItemCount(pDU01ForeskinPotion) == 0)
    endif
    if (Game.GetPlayer().GetItemCount(pDU01ForeskinPotion) == 1)
    endIf
    pDU01FPCount.Value = CurrentCount
    UpdateCurrentInstanceGlobal(pDU01FPCount)
    if CurrentCount >= 1
        pDU01FQ.SetObjectiveCompleted(4,1)
	pDU01FQ.SetObjectiveDisplayed(5,1)
    elseif CurrentCount < 1
           pDU01FQ.SetObjectiveCompleted(4,0)
           pDU01FQ.SetObjectiveDisplayed(5,0)
              pDU01FQ.SetObjectiveDisplayed(4,true,true)
       endif

endFunction

Function ForeskinTotalCounted()
	if ((pDU01GFCount.Value >= 1) && (pDU01TFCount.Value >= 1) && (pDU01HFCount.Value >= 1))
		pDU01FQ.SetStage(80)
	elseif pDU01FQ.SetStage(10)
		pDU01FQ.SetObjectiveCompleted(4,0)
	endif

endFunction