;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname DU01TIF__0663B91A Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
Game.GetPlayer().Additem(DA09Crystal, 1)

DA09Property.setStage(100)

(DU01DagothGemAlias as DA09GemScript).PlayScene()
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

MiscObject Property DA09Crystal  Auto  

ReferenceAlias Property DU01DagothGemAlias  Auto  

Quest Property DA09Property  Auto  
