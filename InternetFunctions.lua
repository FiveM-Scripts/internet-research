
--this function enables the mouse input for scaleform
function enableMouse()
 if HasNamedScaleformMovieLoaded("web_browser") then
   PushScaleformMovieFunction(scaleform, "SET_MOUSE_INPUT")
	--these 2 are the moust X and Y position on screen
   PushScaleformMovieFunctionParameterFloat(GetDisabledControlNormal(2, 239))
   PushScaleformMovieFunctionParameterFloat(GetDisabledControlNormal(2, 240))
   PushScaleformMovieFunctionParameterInt(-1)
    --PopScaleform is kinda like populate scaleform or an "end" statement to your scaleform function "push"
   PopScaleformMovieFunctionVoid()
    --this is the mouse scroll wheel
  if IsControlJustPressed(2, 242) then
   Citizen.Trace("is control 242 "..tostring(IsControlJustPressed(2, 241)).." bvar: "..tostring(bvar))
    --this is for scrolling the webpage
   if bvar <= 0.0 then
    bvar = 20.0
   else
    bvar = bvar + 20.0
	 if bvar >=100.0 then 
	  bvar = 100.0
	 end
   end
  end
   --this is the mouse scroll wheel
  if IsControlJustPressed(2, 241) then
   Citizen.Trace("is control 241 "..tostring(IsControlJustPressed(2, 241)).." bvar: "..tostring(bvar))
    --this is for scrolling the webpage
   if bvar > 0.0 then
    bvar = 0.0
   else
    bvar = bvar - 20.0
	 if bvar <=100.0 then 
	  bvar = -100.0
	 end
   end
  end  
 --this is also for scrolling the webpage
 PushScaleformMovieFunction(scaleform, "SET_ANALOG_STICK_INPUT")
 PushScaleformMovieFunctionParameterFloat(0.0)
 PushScaleformMovieFunctionParameterFloat(0.0)
 PushScaleformMovieFunctionParameterFloat(bvar)
 PushScaleformMovieFunctionParameterBool(false)        			
 PopScaleformMovieFunctionVoid()
--this is the mouse left click		
if IsControlJustPressed(1, 237) then
 if HasNamedScaleformMovieLoaded("web_browser") then
  PushScaleformMovieFunctionParameterFloat(16.0)
   --this is what enables the mouse right click
  PushScaleformMovieFunction(scaleform, "SET_INPUT_EVENT")
  PushScaleformMovieFunctionParameterFloat(16.0)
  PopScaleformMovieFunctionVoid()  
 else
  PopScaleformMovieFunctionVoid()
 end
end 
end
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

