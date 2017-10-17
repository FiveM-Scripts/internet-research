
--this function enables the mouse input for scaleform
function enableMouse()
 PushScaleformMovieFunction(scaleform, "SET_MOUSE_INPUT")
 PushScaleformMovieFunctionParameterFloat(GetDisabledControlNormal(2, 239))
 PushScaleformMovieFunctionParameterFloat(GetDisabledControlNormal(2, 240))
 PushScaleformMovieFunctionParameterInt(-1)
 PopScaleformMovieFunctionVoid()
 if HasNamedScaleformMovieLoaded("web_browser") then
   
 end 
 --IsControlJustPressed(2, 242)         
  if IsControlJustPressed(2, 242) then
   Citizen.Trace("is control 242 "..tostring(IsControlJustPressed(2, 241)).." bvar: "..tostring(bvar))
   if bvar <= 0.0 then
    bvar = 20.0
   else
    bvar = bvar + 20.0
	 if bvar >=100.0 then 
	  bvar = 100.0
	 end
   end
  end
  if IsControlJustPressed(2, 241) then
   Citizen.Trace("is control 241 "..tostring(IsControlJustPressed(2, 241)).." bvar: "..tostring(bvar))
   if bvar > 0.0 then
    bvar = 0.0
   else
    bvar = bvar - 20.0
	 if bvar <=100.0 then 
	  bvar = -100.0
	 end
   end
  end  
 
 PushScaleformMovieFunction(scaleform, "SET_ANALOG_STICK_INPUT")
 PushScaleformMovieFunctionParameterFloat(0.0)
 PushScaleformMovieFunctionParameterFloat(0.0)
 PushScaleformMovieFunctionParameterFloat(bvar)
 PushScaleformMovieFunctionParameterBool(false)        			
 PopScaleformMovieFunctionVoid()
 
end
----------------------------------------------------
----------------------------------------------------

--this should be in a loop 
--this gives you some info about current site and stuff
  if HasScaleformMovieLoaded(scaleform) then
   getcurentwebsitid = GetCurrentWebsiteId()
   getcurentwebsitPage = Citizen.InvokeNative(0xE3B05614DCE1D014, getcurentwebsitid)
   getcurentPage = Citizen.InvokeNative(0x01A358D9128B7A86)
  else
   getcurentwebsitid = nil
   getcurentwebsitPage = nil
   getcurentPage = nil
  end
if IsControlJustPressed(1, 237) then
 if HasNamedScaleformMovieLoaded("web_browser") then
  SetPedConfigFlag(PlayerPedId(), 185, true)
PushScaleformMovieFunction(scaleform, "SET_DATA_SLOT")
PushScaleformMovieFunctionParameterInt(0)
PushScaleformMovieFunctionParameterInt(2)
PopScaleformMovieFunctionVoid()
  PushScaleformMovieFunctionParameterFloat(16.0)
  PushScaleformMovieFunction(scaleform, "SET_INPUT_EVENT")
  PushScaleformMovieFunctionParameterFloat(16.0)
  PopScaleformMovieFunctionVoid()  
 else

  PopScaleformMovieFunctionVoid()
 end
    
else
 vVar = nil
 nvar = nil
end
