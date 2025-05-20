Scriptname DU01SwapInBaegoth extends Quest  

GlobalVariable Property MyGlobal Auto
Actor Property DU01DagothUr Auto
Actor Property DU01BaegothUr Auto
Float lastValue = 0.0

Event OnInit()
    lastValue = MyGlobal.GetValue()
    RegisterForSingleUpdate(1.0)
    Debug.MessageBox("SwapBaegothOnInit")
EndEvent

Event OnUpdate()
    Float currentValue = MyGlobal.GetValue()
    
    if currentValue != lastValue
        Debug.MessageBox("Global variable has changed! Old: " + lastValue + " New: " + currentValue)
        DU01DagothUr.Disable(True)
	 DU01BaegothUr.Enable(True)
        DU01BaegothUr.MoveTo(Game.GetPlayer())
    endif

    lastValue = currentValue
    RegisterForSingleUpdate(1.0) ; continue checking every second
EndEvent