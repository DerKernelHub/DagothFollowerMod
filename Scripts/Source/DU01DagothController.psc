Scriptname DU01DagothController extends Quest

 

Actor Property PlayerREF Auto

ReferenceAlias Property FollowerAlias Auto

Faction Property DismissedFollowerFaction Auto

Faction Property CurrentHireling Auto

Message Property  FollowerDismissMessage Auto

Message Property  FollowerDismissMessageWedding Auto

Message Property  FollowerDismissMessageCompanions Auto

Message Property  FollowerDismissMessageCompanionsMale Auto

Message Property  FollowerDismissMessageCompanionsFemale Auto

Message Property  FollowerDismissMessageWait Auto

SetHirelingRehire Property HirelingRehireScript Auto

GlobalVariable Property FollowerRecruited Auto

Int Property iFollowerDismiss Auto Conditional

 

Function SetFollower(ObjectReference FollowerRef)

     actor FollowerActor = FollowerRef as Actor

     FollowerActor.RemoveFromFaction(DismissedFollowerFaction)

     If FollowerActor.GetRelationshipRank(PlayerREF) <3 && FollowerActor.GetRelationshipRank(PlayerREF) >= 0

          FollowerActor.SetRelationshipRank(PlayerREF, 3)

     EndIf

     FollowerActor.SetPlayerTeammate()

     FollowerAlias.ForceRefTo(FollowerActor)

     FollowerActor.EvaluatePackage()

     FollowerRecruited.SetValue(1)

EndFunction

 

Function FollowerWait()

     actor FollowerActor = FollowerAlias.GetActorRef() as Actor

     FollowerActor.SetActorValue("WaitingForPlayer", 1)

     SetObjectiveDisplayed(10, abforce = true)

EndFunction

 

Function FollowerFollow()

     actor FollowerActor = FollowerAlias.GetActorRef() as Actor

     FollowerActor.SetActorValue("WaitingForPlayer", 0)

     SetObjectiveDisplayed(10, abdisplayed = false)

     FollowerActor.EvaluatePackage()

EndFunction

 

Function DismissFollower(Int iMessage = 0, Int iSayLine = 1)

     If FollowerAlias && FollowerAlias.GetActorReference().IsDead() == False

          If iMessage == 0

               FollowerDismissMessage.Show()

          ElseIf iMessage == 1

               FollowerDismissMessageWedding.Show()

          ElseIf iMessage == 2

               FollowerDismissMessageCompanions.Show()

          ElseIf iMessage == 3

               FollowerDismissMessageCompanionsMale.Show()

          ElseIf iMessage == 4

               FollowerDismissMessageCompanionsFemale.Show()

          ElseIf iMessage == 5

               FollowerDismissMessageWait.Show()

          Else

              FollowerDismissMessage.Show()

          EndIf

          actor DismissedFollowerActor = FollowerAlias.GetActorRef() as Actor

          DismissedFollowerActor.StopCombatAlarm()

          DismissedFollowerActor.AddToFaction(DismissedFollowerFaction)

          DismissedFollowerActor.SetPlayerTeammate(false)

          DismissedFollowerActor.RemoveFromFaction(CurrentHireling)

          DismissedFollowerActor.SetActorValue("WaitingForPlayer", 0)

          FollowerRecruited.SetValue(0)

          HirelingRehireScript.DismissHireling(DismissedFollowerActor.GetActorBase())

          If iSayLine == 1

               iFollowerDismiss = 1

              DismissedFollowerActor.EvaluatePackage()

             Utility.Wait(2)

          EndIf

             FollowerAlias.Clear()

             iFollowerDismiss = 0

     EndIf

EndFunction