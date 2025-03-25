Scriptname DU01TesticulusTorsioniusScript extends activemagiceffect  

Event OnEffectStart(Actor akTarget, Actor akCaster)
    if akTarget
        akTarget.DamageActorValue("Health", 30)  ; Deal 35 damage
        akTarget.PushActorAway(akTarget, 0)  ; Force paralysis effect
    endif
EndEvent