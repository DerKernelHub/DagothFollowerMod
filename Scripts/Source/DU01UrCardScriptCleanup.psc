;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 2
Scriptname DU01UrCardScriptCleanup Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_1
Function Fragment_1(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
Game.GetPlayer().removeitem(Gold001, 100000)
Game.GetPlayer().Additem(DU01UrCard, 1)
DU01NoUrCard.SetValue(0)
DU01HasUrCard.SetValue(1)
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

MiscObject Property Gold001  Auto  

GlobalVariable Property DU01NoUrCard  Auto  

MiscObject Property DU01UrCard  Auto  

GlobalVariable Property DU01HasUrCard  Auto  
