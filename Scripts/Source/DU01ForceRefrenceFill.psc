Scriptname DU01ForceRefrenceFill extends Quest  

referencealias property DagothRef auto
referencealias property PlayerRef auto
referencealias property BaegothRef auto
actor property Dagoth auto
actor property Player auto
actor property Baegoth auto

Event OnPlayerLoadGame()
    Utility.Wait(3.5)
    if DagothRef.GetRef() == none
        DagothRef.ForceRefTo(Dagoth)
    endIf
    if PlayerRef.GetRef() == none
	 PlayerRef.ForceRefTo(Player)
   endif
   if BaegothRef.GetRef() == none
	BaegothRef.ForceRefTo(Baegoth)
  endif
endEvent