Scriptname DU01GenderSwapEffect extends activemagiceffect  

Actor Property PlayerREF Auto
Actor Property DU01DagothUr Auto
Actor Property DU01BaegothUr Auto
GlobalVariable Property DU01IsBaegoth Auto
VisualEffect Property SummonTargetFX1 Auto
VisualEffect Property SummonTargetFX2 Auto
VisualEffect Property UnsummonTargetFX1 Auto
VisualEffect Property UnsummonTargetFX2 Auto

Function OnInit()

    If (DU01IsBaegoth.getValue() == 0)
        DU01IsBaegoth.setValue(1.0)
        unsummonGoth(DU01DagothUr)
        summonGoth(DU01BaegothUr)
    else
        DU01IsBaegoth.setValue(0.0)
        unsummonGoth(DU01BaegothUr)
        summonGoth(DU01DagothUr)
    EndIf
EndFunction

Function summonGoth(Actor goth)
    float az = PlayerRef.GetAngleZ()
    goth.Enable(True)
    goth.SetAngle(0.0, 0.0, az + 180.0)
    goth.MoveTo(PlayerREF, 200.0 * Math.sin(az), 200.0 * Math.cos(az), 0.0, false)
    SummonTargetFX1.Play(goth)
    SummonTargetFX2.Play(goth)
    SummonTargetFX1.Stop(goth)
    SummonTargetFX2.Stop(goth)
EndFunction

Function unsummonGoth(Actor goth)
    UnsummonTargetFX1.Play(goth)
    UnsummonTargetFX1.Stop(goth)
    UnsummonTargetFX2.Play(goth)
    UnsummonTargetFX2.Stop(goth)
    goth.Disable(True)
EndFunction