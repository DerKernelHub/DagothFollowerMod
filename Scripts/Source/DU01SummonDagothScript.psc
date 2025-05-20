Scriptname DU01SummonDagothScript extends activemagiceffect  

Actor Property PlayerREF Auto
Actor Property DU01DagothUr Auto
Actor Property DU01BaegothUr Auto
VisualEffect Property SummonTargetFX1 Auto
VisualEffect Property SummonTargetFX2 Auto
GlobalVariable Property DU01IsBaegoth Auto

Function OnEffectStart(Actor akTarget, Actor akCaster)
 	float az = PlayerRef.GetAngleZ()	
	If DU01IsBaegoth.getValue() == 0.00
 		DU01DagothUr.SetAngle(0.0, 0.0, az + 180.0)
 		DU01DagothUr.MoveTo(PlayerREF, 200.0 * Math.sin(az), 200.0 * Math.cos(az), 0.0, false)
 		SummonTargetFX1.Play(DU01DagothUr)
 		SummonTargetFX2.Play(DU01DagothUr)
 		SummonTargetFX1.Stop(DU01DagothUr)
 		SummonTargetFX2.Stop(DU01DagothUr)
	
	else
 		DU01BaegothUr.SetAngle(0.0, 0.0, az + 180.0)
 		DU01BaegothUr.MoveTo(PlayerREF, 200.0 * Math.sin(az), 200.0 * Math.cos(az), 0.0, false)
 		SummonTargetFX1.Play(DU01BaegothUr)
 		SummonTargetFX2.Play(DU01BaegothUr)
 		SummonTargetFX1.Stop(DU01BaegothUr)
 		SummonTargetFX2.Stop(DU01BaegothUr)
	
	EndIf

EndFunction