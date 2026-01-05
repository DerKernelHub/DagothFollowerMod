;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname DU01StressTest Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
utility.wait(6)
Game.GetPlayer().PlaceAtMe(Nazeem, 10)
utility.wait(2)
Game.GetPlayer().PlaceAtMe(Nazeem, 10)
utility.wait(2)
Game.GetPlayer().PlaceAtMe(Nazeem, 20)
utility.wait(2)
Game.GetPlayer().PlaceAtMe(Nazeem, 20)
utility.wait(2)
Game.GetPlayer().PlaceAtMe(Nazeem, 40)
utility.wait(2)
Game.GetPlayer().PlaceAtMe(Nazeem, 50)
utility.wait(2)
Game.GetPlayer().PlaceAtMe(Nazeem, 50)
utility.wait(2)
Game.GetPlayer().PlaceAtMe(Nazeem, 100)
utility.wait(2)
Game.GetPlayer().PlaceAtMe(Nazeem, 100)
utility.wait(2)
Game.GetPlayer().PlaceAtMe(Nazeem, 100)
utility.wait(2)
Game.GetPlayer().PlaceAtMe(Nazeem, 100)
utility.wait(2)
Game.GetPlayer().PlaceAtMe(Nazeem, 100)
utility.wait(2)
Game.GetPlayer().PlaceAtMe(Nazeem, 100)
utility.wait(2)
Game.GetPlayer().PlaceAtMe(Nazeem, 100)
utility.wait(2)
Game.GetPlayer().PlaceAtMe(Nazeem, 100)
utility.wait(2)
Game.GetPlayer().PlaceAtMe(Nazeem, 100)
utility.wait(10)
Game.GetPlayer().additem(Gold001, 10000)
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

ActorBase Property Nazeem  Auto  

MiscObject Property Gold001  Auto  
