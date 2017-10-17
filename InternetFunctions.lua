
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

   PushScaleformMovieFunction(scaleform, "GET_PAGE_ID")
   PageID = PopScaleformMovieFunction()
   selectionBool = Citizen.InvokeNative(0x768FF8961BA904D6, getCurrentSelection)
   ScreenIDBool = Citizen.InvokeNative(0x768FF8961BA904D6, siteID)
   PageIDBool = Citizen.InvokeNative(0x768FF8961BA904D6, PageID)
   vVar = Citizen.InvokeNative(0x2DE7EFA66B906036, getCurrentSelection)
   VVar = Citizen.InvokeNative(0x3E42690032C25806, getCurrentSelection)
   nVar = Citizen.InvokeNative(0x2DE7EFA66B906036, siteID)
   wvar = Citizen.InvokeNative(0x3E42690032C25806, siteID)
   Nvar = Citizen.InvokeNative(0x2DE7EFA66B906036, PageID)
   Wvar = Citizen.InvokeNative(0x3E42690032C25806, PageID)   
   wVar = Round(0.0 + 1000.0 * Timestep())
   Citizen.InvokeNative(0x3F369CD14982FA9D, GetHashKey(wvar), wVar + wvar)
   Citizen.Trace("selectionBool: "..tostring(selectionBool).." ScreenIDBool: "..tostring(ScreenIDBool).." PageIDBool: "..tostring(PageIDBool)) 
   Citizen.Trace(" get current selection: "..tostring(vVar).." get current websiteID: "..tostring(nVar).." get current page ID "..tostring(Wvar))   
   PushScaleformMovieFunction(scaleform, "GET_CURRENT_ROLLOVER")
   getCurrentSelection = PopScaleformMovieFunction()
   PushScaleformMovieFunction(scaleform, "GET_SITE_ID")
   siteID = PopScaleformMovieFunction()     
else
 vVar = nil
 nvar = nil
end
