Scriptname DU01FQPlayerAliasScript1 extends ReferenceAlias  

Quest Property pDU01FQ Auto Conditional
Ingredient Property pDU01FrosttrollForeskin Auto Conditional
Ingredient Property pDU01GiantForeskin Auto Conditional
Ingredient Property pDU01HorseForeskin Auto Conditional
MiscObject  Property pDU01ForeskinPotion Auto Conditional
DU01FQScript Property pDU01FQS Auto Conditional

Event OnInit()

    AddInventoryEventFilter(pDU01FrosttrollForeskin)
    AddInventoryEventFilter(pDU01GiantForeskin)
    AddInventoryEventFilter(pDU01HorseForeskin)
    AddInventoryEventFilter(pDU01ForeskinPotion)

endEvent

Event OnItemAdded(Form akBaseItem, int aiItemCount, ObjectReference akItemReference, ObjectReference akSourceContainer)
    if pDU01FQ.GetStageDone(10) == 1
        if pDU01FQ.GetStageDone(20) == 0
            if akBaseItem == pDU01GiantForeskin
                pDU01FQS.GiantForeskinCounted()
                pDU01FQS.ForeskinTotalCounted()
            endif
        endif
    endif

    if pDU01FQ.GetStageDone(10) == 1
        if pDU01FQ.GetStageDone(30) == 0
            if akBaseItem == pDU01FrostTrollForeskin
                pDU01FQS.TrollForeskinCounted()
                pDU01FQS.ForeskinTotalCounted()
            endif
        endif
    endif

    if pDU01FQ.GetStageDone(10) == 1
        if pDU01FQ.GetStageDone(40) == 0
            if akBaseItem == pDU01HorseForeskin
                pDU01FQS.HorseForeskinCounted()
                pDU01FQS.ForeskinTotalCounted()
            endif
        endif
    endif

    if pDU01FQ.GetStageDone(10) == 1
        if pDU01FQ.GetStageDone(90) == 0
            if akBaseItem == pDU01ForeskinPotion
                pDU01FQS.ForeskinPotionCounted()
            endif
        endif
    endif

endEvent