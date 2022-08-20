hs.hotkey.bind({"cmd", "alt", "ctrl"}, "W", function()
  hs.notify.new({title="Hammerspoon", informativeText="Hello World"}):send()
end)

-- amphetamine caffeine
-- amphetamine = require "amphetamine"

-- Hyper
 hyper = {"ctrl", "alt", "cmd", "shift"}


 -- reload config
 local hyper = { "cmd", "alt", "ctrl", "shift" }
 hs.hotkey.bind(hyper, "0", function()
   hs.reload()
 end)
 hs.notify.new({title="Hammerspoon", informativeText="Config loaded"}):send()


-- Move windows

hs.window.animationDuration = 0
hs.hotkey.bind(hyper, "h", function()
  local win = hs.window.focusedWindow();
  if not win then return end
win:moveToUnit(hs.layout.left50)
end)
hs.hotkey.bind(hyper, "j", function()
  local win = hs.window.focusedWindow();
  if not win then return end
win:moveToUnit(hs.layout.maximized)
end)
hs.hotkey.bind(hyper, "k", function()
  local win = hs.window.focusedWindow();
  if not win then return end
win:moveToScreen(win:screen():next())
end)
hs.hotkey.bind(hyper, "l", function()
  local win = hs.window.focusedWindow();
  if not win then return end
win:moveToUnit(hs.layout.right50)
end)

-- Finder in front

--[[
function applicationWatcher(appName, eventType, appObject)
    if (eventType == hs.application.watcher.activated) then
        if (appName == "Finder") then
            -- Bring all Finder windows forward when one gets activated
            appObject:selectMenuItem({"Window", "Bring All to Front"})
        end
    end
end
appWatcher = hs.application.watcher.new(applicationWatcher)
appWatcher:start()
]]
-- Hotkeys
hs.hotkey.bind(hyper,'x', function()
 if hs.application.title(hs.application.frontmostApplication()) == "Safari" then
 hs.eventtap.keyStroke('cmd', 'h')
 else
 hs.application.launchOrFocus("Safari.app")
 end
 end)
--
--[[
hs.hotkey.bind(hyper,'m', function()
 if hs.application.title(hs.application.frontmostApplication()) == "Finder" then
 hs.eventtap.keyStroke('cmd', 'h')
 else
 hs.application.launchOrFocus("Finder.app")
 end
 appObject:selectMenuItem({"Window", "Merge All Windows"})
 end)
]]

-- Paste
hs.hotkey.bind(hyper, "v", function()hs.eventtap.keyStrokes(hs.pasteboard.getContents()) end)

--Duble click
function leftDoubleClick(modifiers)
   local pos=hs.mouse.getAbsolutePosition() -- <1>
   hs.eventtap.event.newMouseEvent(
     hs.eventtap.event.types.leftMouseDown, pos, modifiers) -- <2>
      :setProperty(hs.eventtap.event.properties.mouseEventClickState, 2)
      :post() -- <3>
   hs.eventtap.event.newMouseEvent( -- <4>
     hs.eventtap.event.types.leftMouseUp, pos, modifiers):post()
end

hs.hotkey.bindSpec({ hyper, "l" },leftDoubleClick)


-- Uppercase
hs.hotkey.bind(hyper, "u", function()
   hs.eventtap.keyStroke("cmd","c")
   hs.eventtap.keyStrokes(string.upper(hs.pasteboard.getContents()))
   hs.pasteboard.clearContents()
 end)

-- Remote desktop


hs.hotkey.bind(hyper, "r", function()
   if hs.application.title(hs.application.frontmostApplication()) == "Microsoft Remote Desktop" then
   hs.eventtap.keyStroke('cmd', 'h')
   else
   hs.application.launchOrFocus("Microsoft Remote Desktop.app")
end
end)

hs.hotkey.bind(hyper, "d", function()
   if hs.application.title(hs.application.frontmostApplication()) == "Docs" then
   hs.eventtap.keyStroke('cmd', 'h')
   else
   hs.application.launchOrFocus("Docs.app")
end
end)




hs.hotkey.bind(hyper, "k", function()
   if hs.application.title(hs.application.frontmostApplication()) == "KNIME" then
   hs.eventtap.keyStroke('cmd', 'h')
   else
   hs.application.launchOrFocus("Knime 4.4.2.app")
end
end)


hs.hotkey.bind(hyper, "n", function()
   if hs.application.title(hs.application.frontmostApplication()) == "Notes" then
   hs.eventtap.keyStroke('cmd', 'h')
   else
   hs.application.launchOrFocus("Notes.app")
end
end)


hs.hotkey.bind(hyper, "t", function()
   if hs.application.title(hs.application.frontmostApplication()) == "Trello" then
   hs.eventtap.keyStroke('cmd', 'h')
   else
   hs.application.launchOrFocus("Trello.app")
end
end)

hs.hotkey.bind(hyper, "z", function()
   if hs.application.title(hs.application.frontmostApplication()) == "zoom.us" then
   hs.eventtap.keyStroke('cmd', 'h')
   else
   hs.application.launchOrFocus("zoom.us.app")
end
end)

hs.hotkey.bind(hyper, "f", function()
   if hs.application.title(hs.application.frontmostApplication()) == "Firefox" then
   hs.eventtap.keyStroke('cmd', 'h')
   else
   hs.application.launchOrFocus("Firefox.app")
end
end)

hs.hotkey.bind(hyper, "c", function()
   if hs.application.title(hs.application.frontmostApplication()) == "Google Chrome" then
   hs.eventtap.keyStroke('cmd', 'h')
   else
   hs.application.launchOrFocus("Google Chrome.app")
end
end)

--[[
hs.hotkey.bind(hyper, "w", function()
   if hs.application.title(hs.application.frontmostApplication()) == "Code" then
   hs.eventtap.keyStroke('cmd', 'h')
   else
   hs.application.launchOrFocus("Visual Studio Code.app")
end
end)
]]

hs.hotkey.bind(hyper, "b", function()
   if hs.application.title(hs.application.frontmostApplication()) == "VirtualBox VM" then
   hs.eventtap.keyStroke('cmd', 'h')
   else
   hs.application.launchOrFocus("VirtualBoxVM.app")
end
end)

hs.hotkey.bind(hyper, "p", function()
   if hs.application.title(hs.application.frontmostApplication()) == "PyCharm" then
   hs.eventtap.keyStroke('cmd', 'h')
   else
   hs.application.launchOrFocus("PyCharm CE.app")
end
end)

hs.hotkey.bind(hyper, "m", function()
   if hs.application.title(hs.application.frontmostApplication()) == "Miro" then
   hs.eventtap.keyStroke('cmd', 'h')
   else
   hs.application.launchOrFocus("Miro.app")
end
end)


hs.hotkey.bind(hyper, "s", function()
   if hs.application.title(hs.application.frontmostApplication()) == "Slack" then
   hs.eventtap.keyStroke('cmd', 'h')
   else
   hs.application.launchOrFocus("Slack.app")
end
end)

hs.hotkey.bind(hyper, "j", function()
   if hs.application.title(hs.application.frontmostApplication()) == "Joplin" then
   hs.eventtap.keyStroke('cmd', 'h')
   else
   hs.application.launchOrFocus("Joplin.app")
end
end)

hs.hotkey.bind(hyper, "o", function()
   if hs.application.title(hs.application.frontmostApplication()) == "Danilo  Observable" then
   hs.eventtap.keyStroke('cmd', 'h')
   else
   hs.application.launchOrFocus("Observable.app")
end
end)

hs.hotkey.bind(hyper, "b", function()
   if hs.application.title(hs.application.frontmostApplication()) == "Blender" then
   hs.eventtap.keyStroke('cmd', 'h')
   else
   hs.application.launchOrFocus("Blender.app")
end
end)

hs.hotkey.bind(hyper, "g", function()
   if hs.application.title(hs.application.frontmostApplication()) == "Figma" then
   hs.eventtap.keyStroke('cmd', 'h')
   else
   hs.application.launchOrFocus("Figma.app")
end
end)


hs.hotkey.bind(hyper, "Space", function()
   if hs.application.title(hs.application.frontmostApplication()) == "AddNotion" then
   hs.eventtap.keyStroke('cmd', 'h')
   else
   hs.application.launchOrFocus("AddNotion.app")
end
end)
--dubleclick

--[[
function doubleLeftClick(point)
    local clickState = hs.eventtap.event.properties.mouseEventClickState
    hs.eventtap.event.newMouseEvent(hs.eventtap.event.types["leftMouseDown"], point):setProperty(clickState, 1):post()
    hs.eventtap.event.newMouseEvent(hs.eventtap.event.types["leftMouseUp"], point):setProperty(clickState, 1):post()
    hs.timer.usleep(1000)
    hs.eventtap.event.newMouseEvent(hs.eventtap.event.types["leftMouseDown"], point):setProperty(clickState, 2):post()
    hs.eventtap.event.newMouseEvent(hs.eventtap.event.types["leftMouseUp"], point):setProperty(clickState, 2):post()
end

hs.hotkey.bind(hyper, "c", doubleLeftClick(point))
]]

-- Caffeine
--[[
caffeine = hs.menubar.new()
function setCaffeineDisplay(state)
    if state then
        caffeine:setTitle("Awake")
    else
        caffeine:setTitle("Sleepy")
    end
end
function caffeineClicked()
    setCaffeineDisplay(hs.caffeinate.toggle("displayIdle"))
end
if caffeine then
    caffeine:setClickCallback(caffeineClicked)
    setCaffeineDisplay(hs.caffeinate.get("displayIdle"))
end

function muteOnWake(eventType)
    if (eventType == hs.caffeinate.watcher.systemDidWake) then
        local output = hs.audiodevice.defaultOutputDevice()
        output:setMuted(true)
    end
end
caffeinateWatcher = hs.caffeinate.watcher.new(muteOnWake)
caffeinateWatcher:start()
]]


--local ciao=hs.mouse.getAbsolutePosition()

--hs.mouse.setAbsolutePosition({x=300,y=170})
hs.mouse.setAbsolutePosition({x=300,y=170})

--[[
function moveWindowOneSpace(direction)
   _mouseOrigin = hs.mouse.getAbsolutePosition()
   local win = hs.window.focusedWindow()
   _clickPoint = win:zoomButtonRect()

   _clickPoint.x = _clickPoint.x + _clickPoint.w + 5
   _clickPoint.y = _clickPoint.y + (_clickPoint.h / 2)

   local mouseClickEvent = hs.eventtap.event.newMouseEvent(hs.eventtap.event.types.leftmousedown, _clickPoint)
   mouseClickEvent:post()

   hs.timer.usleep(150000)

   local nextSpaceDownEvent = hs.eventtap.event.newKeyEvent({"ctrl"}, direction, true)
   nextSpaceDownEvent:post()
end

function moveWindowOneSpaceEnd(direction)
   local nextSpaceUpEvent = hs.eventtap.event.newKeyEvent({"ctrl"}, direction, false)
   nextSpaceUpEvent:post()
   hs.timer.usleep(150000)
   local mouseReleaseEvent = hs.eventtap.event.newMouseEvent(hs.eventtap.event.types.leftmouseup, _clickPoint)
   mouseReleaseEvent:post()
   hs.timer.usleep(100000)
   hs.mouse.setAbsolutePosition(_mouseOrigin)
end

hk1 = hs.hotkey.bind(hyper, "right",
   function() moveWindowOneSpace("right") end,
   function() moveWindowOneSpaceEnd("right") end)
hk2 = hs.hotkey.bind(hyper, "left",
   function() moveWindowOneSpace("left") end,
   function() moveWindowOneSpaceEnd("left") end)
]]

--[[
function applicationWatcher(appName, eventType, appObject)
    if (eventType == hs.application.watcher.activated) then
        if (appName == "Finder") then
            -- Bring all Finder windows forward when one gets activated
            appObject:selectMenuItem({"Window", "Bring All to Front"})
        end
    end
end
appWatcher = hs.application.watcher.new(applicationWatcher)
appWatcher:start()

]]


function cycle_safari_agents()
    hs.application.launchOrFocus("Safari")
    local safari = hs.appfinder.appFromName("Safari")

    local str_default = {"Develop", "User Agent", "Default (Automatically Chosen)"}
    local str_ie10 = {"Develop", "User Agent", "Firefox — Windows"}
    local str_chrome = {"Develop", "User Agent", "Google Chrome — Windows"}

    local default = safari:findMenuItem(str_default)
    local ie10 = safari:findMenuItem(str_ie10)
    local chrome = safari:findMenuItem(str_chrome)

    if (default and default["ticked"]) then
        safari:selectMenuItem(str_ie10)
        hs.alert.show("IE10")
    end
    if (ie10 and ie10["ticked"]) then
        safari:selectMenuItem(str_chrome)
        hs.alert.show("Chrome")
    end
    if (chrome and chrome["ticked"]) then
        safari:selectMenuItem(str_default)
        hs.alert.show("Safari")
    end
end
hs.hotkey.bind({"cmd", "alt", "ctrl"}, '7', cycle_safari_agents)




local function printTable( t )
 
    local printTable_cache = {}
 
    local function sub_printTable( t, indent )
 
        if ( printTable_cache[tostring(t)] ) then
            print( indent .. "*" .. tostring(t) )
        else
            printTable_cache[tostring(t)] = true
            if ( type( t ) == "table" ) then
                for pos,val in pairs( t ) do
                    if ( type(val) == "table" ) then
                        print( indent .. "[" .. pos .. "] => " .. tostring( t ).. " {" )
                        sub_printTable( val, indent .. string.rep( " ", string.len(pos)+8 ) )
                        print( indent .. string.rep( " ", string.len(pos)+6 ) .. "}" )
                    elseif ( type(val) == "string" ) then
                        print( indent .. "[" .. pos .. '] => "' .. val .. '"' )
                    else
                        print( indent .. "[" .. pos .. "] => " .. tostring(val) )
                    end
                end
            else
                print( indent..tostring(t) )
            end
        end
    end
 
    if ( type(t) == "table" ) then
        print( tostring(t) .. " {" )
        sub_printTable( t, "  " )
        print( "}" )
    else
        sub_printTable( t, "  " )
    end
end



function Menu_selector( input_table, menu)
  -- body
      for key, value in pairs(input_table) do
       for key1, value1 in pairs(value) do   
        if value1 == menu then
        
          if ( type(value) == "table" ) then
           for key2, value2 in pairs(value) do 
              if ( type(value2) == "table" ) then
              for key3, value3 in pairs(value2) do           
                if ( type(value3) == "table" ) then
                for key4, value4 in pairs(value3) do      
                  if ( type(value4) == "table" ) then
                  for key5, value5 in pairs(value4) do 
                  if key5=="AXTitle" then
                  --print(value5)
                  table.insert(foo, value5)
                      end
                  end
                  end
                  end
                end 
              end 
            end
           end
          end
        end
      end
    end
                         for i=0,50 do
                      removeFirst(foo,"")


    end
  
end

function explored(app)
    local appl = hs.appfinder.appFromName(app)

    local input_table = appl:getMenuItems()

    foo = {}
    Menu_selector(input_table,"Window")
    print(#foo)
    printTable(foo)
end
--explored("Excel")

function removeFirst(tbl, val)
  for i, v in ipairs(tbl) do
    if v == val then
      return table.remove(tbl, i)
    end
  end
end
function getFirstIndex(tbl, val)
  for i, v in ipairs(tbl) do
    if v == val then
      return  i
    end
  end
end

function Finder_cycler_fwd()
  if hs.application.title(hs.application.frontmostApplication()) == "Finder" then
    local appp = hs.appfinder.appFromName("Finder")

    local input_table = appp:getMenuItems()

    foo = {}
    Menu_selector(input_table,"Window")
    print(#foo)

    to_iterate = {}
   
   start=(getFirstIndex(foo, "Arrange in Front"))+1
    

    for i=start,#foo do
      table.insert(to_iterate, foo[i])
    end
    --printTable(foo)

    --printTable(to_iterate)

  for iter=1,(#to_iterate) do
    if (appp:findMenuItem({"Window",to_iterate[iter]}) and appp:findMenuItem({"Window",to_iterate[iter]})["ticked"]) then
    print("to check : ",to_iterate[iter])    

      appp:selectMenuItem({"Window",to_iterate[iter+1]})
      print("swap : ",to_iterate[iter+1])
      if (to_iterate[iter+1])~=nil then
        hs.alert.show(to_iterate[iter+1])  
      end
      if iter == #to_iterate then 
        appp:selectMenuItem({"Window",to_iterate[1]})
        print("swap: ",to_iterate[1])
        hs.alert.show(to_iterate[1])
      end
      break
    end
    print("iter",iter)    
    
  end
  else
    hs.application.launchOrFocus("Finder") 
  end
end

function Finder_cycler_bkw()
  hs.application.launchOrFocus("Finder") 
    local appp = hs.appfinder.appFromName("Finder")

    local input_table = appp:getMenuItems()

    foo = {}
    Menu_selector(input_table,"Window")
    --print(#foo)

    to_iterate = {}
    start=(getFirstIndex(foo, "Arrange in Front"))+1
    

    for i=start,#foo do
      table.insert(to_iterate, foo[i])
    end
    --printTable(to_iterate)

  for iter=1,(#to_iterate) do
    if (appp:findMenuItem({"Window",to_iterate[iter]}) and appp:findMenuItem({"Window",to_iterate[iter]})["ticked"]) then
    --print("to check : ",to_iterate[iter])    

      appp:selectMenuItem({"Window",to_iterate[iter-1]})
      --print("swap : ",to_iterate[iter+1])
      if (to_iterate[iter-1])~=nil then
        hs.alert.show(to_iterate[iter-1])  
      end
      if iter == 1 then 
        appp:selectMenuItem({"Window",to_iterate[#to_iterate]})
        --print("swap: ",to_iterate[1])
        hs.alert.show(to_iterate[#to_iterate])
      end
      break
    end
    --print("iter",iter)    
  end
end

function Preview_cycler()

    
  if hs.application.title(hs.application.frontmostApplication()) == "Preview" then
    local appp = hs.appfinder.appFromName("Preview")

    local input_table = appp:getMenuItems()

    foo = {}
    Menu_selector(input_table,"Window")
    --print(#foo)

    to_iterate = {}

  start=(getFirstIndex(foo, "Arrange in Front"))+1
    

    for i=start,#foo do
      table.insert(to_iterate, foo[i])
    end
    
    printTable(to_iterate)
    for iter=1,(#to_iterate) do
    if (appp:findMenuItem({"Window",to_iterate[iter]}) and appp:findMenuItem({"Window",to_iterate[iter]})["ticked"]) then
    --print("to check : ",to_iterate[iter])    

      appp:selectMenuItem({"Window",to_iterate[iter+1]})
      --print("swap : ",to_iterate[iter+1])
      if (to_iterate[iter+1])~=nil then
        hs.alert.show(to_iterate[iter+1])  
      end
      if iter == #to_iterate then 
        appp:selectMenuItem({"Window",to_iterate[1]})
        --print("swap: ",to_iterate[1])
        hs.alert.show(to_iterate[1])
      end
      break
    end
  end
  
  else 
    hs.application.launchOrFocus("Preview") 

  end
end

function Excel_cycler()
  if hs.application.title(hs.application.frontmostApplication()) == "Microsoft Excel" then
  
    local appp = hs.appfinder.appFromName("Microsoft Excel")

    local input_table = appp:getMenuItems()

    foo = {}
    Menu_selector(input_table,"Window")
    --print(#foo)
  
    to_iterate = {}
    start=(getFirstIndex(foo, "Arrange in Front"))+1
    

    for i=start,#foo do
      table.insert(to_iterate, foo[i])
    end
    printTable(to_iterate)
    for iter=1,(#to_iterate) do
    if (appp:findMenuItem({"Window",to_iterate[iter]}) and appp:findMenuItem({"Window",to_iterate[iter]})["ticked"]) then
    --print("to check : ",to_iterate[iter])    

      appp:selectMenuItem({"Window",nil})
      --print("swap : ",to_iterate[iter+1])
      if (to_iterate[iter+1])~=nil then
        --hs.alert.show(to_iterate[iter+1])  
      end
      if iter == #to_iterate then 
        appp:selectMenuItem({"Window",nil})
        --print("swap: ",to_iterate[1])
        --hs.alert.show(to_iterate[1])
      end
      break
    end
  end
  else hs.application.launchOrFocus("Microsoft Excel") 
  end
end
function VSCode_cycler_fwd()
  if hs.application.title(hs.application.frontmostApplication()) == "Code" then
    local appp = hs.appfinder.appFromName("Code")

    local input_table = appp:getMenuItems()

    foo = {}
    Menu_selector(input_table,"Window")
    print(#foo)

    to_iterate = {}
   
   start=(getFirstIndex(foo, "Arrange in Front"))+1
    

    for i=start,#foo do
      table.insert(to_iterate, foo[i])
    end
    printTable(foo)

    printTable(to_iterate)

  for iter=1,(#to_iterate) do
    if (appp:findMenuItem({"Window",to_iterate[iter]}) and appp:findMenuItem({"Window",to_iterate[iter]})["ticked"]) then
    print("to check : ",to_iterate[iter])    

      appp:selectMenuItem({"Window",to_iterate[iter+1]})
      print("swap : ",to_iterate[iter+1])
      if (to_iterate[iter+1])~=nil then
        hs.alert.show(to_iterate[iter+1])  
      end
      if iter == #to_iterate then 
        appp:selectMenuItem({"Window",to_iterate[1]})
        print("swap: ",to_iterate[1])
        hs.alert.show(to_iterate[1])
      end
      break
    end
    print("iter",iter)    
    
  end
  else
    hs.application.launchOrFocus("Visual Studio Code.app") 
  end
end

hs.hotkey.bind(hyper, 'q', Finder_cycler_fwd)
hs.hotkey.bind(hyper, 'w', VSCode_cycler_fwd)
hs.hotkey.bind({"cmd", "alt", "ctrl"}, 'q', Finder_cycler_bkw)
hs.hotkey.bind(hyper, 'a', Preview_cycler)
hs.hotkey.bind(hyper, 'e', Excel_cycler)










local timer = require("hs.timer")
local eventtap = require("hs.eventtap") 
local keycodes = require("hs.keycodes")
local events = eventtap.event.types --all the event types

timeFrame = 1 --this is the timeframe in which the second press should occur, in seconds
key = 50 --the specific keycode we're detecting, in this case, 50

--print(keycodes.map["`"]) you can look up the certain keycode by accessing the map

function twoHandler()
    hs.alert("Pressed ` twice!") --the handler for the double press
end

function correctKeyChecker(event) --keypress validator, checks if the keycode matches the key we're trying to detect
    local keyCode = event:getKeyCode()
    return keyCode == key --return if keyCode is key
end

function inTime(time) --checks if the second press was in time
    return timer.secondsSinceEpoch() - time < timeFrame --if the time passed from the first press to the second was less than the timeframe, then it was in time
end

local pressTime, firstDown = 0, false --pressTime was the time the first press occurred which is set to 0, and firstDown indicates if the first press has occurred or not

eventtap.new({ events.keyDown }, function(event) --watch the keyDown event, trigger the function every time there is a keydown
    if correctKeyChecker(event) then --if correct key
        if firstDown and inTime(pressTime) then --if first press already happened and the second was in time
            twoHandler() --execute the handler
        elseif not firstDown or inTime(pressTime) then --if the first press has not happened or the second wasn't in time
            pressTime, firstDown = timer.secondsSinceEpoch(), true --set first press time to now and first press to true
            return false --stop prematurely
        end
    end
    pressTime, firstDown = 0, false --if it reaches here that means the double tap was successful or the key was incorrect, thus reset timer and flag
    return false --keeps the event propogating
end):start() --start our watcher


hs.hotkey.bind(hyper, "i", function()
  local ciao=hs.mouse.getAbsolutePosition()   
  printTable(ciao)
  print(ciao.y)
  print(ciao.x)
end)



--test windowSpaces
local hotkey = require "hs.hotkey"
local window = require "hs.window"
local spaces = require "hs.spaces"

function getGoodFocusedWindow(nofull)
   local win = window.focusedWindow()
   if not win or not win:isStandard() then return end
   if nofull and win:isFullScreen() then return end
   return win
end 

function flashScreen(screen)
   local flash=hs.canvas.new(screen:fullFrame()):appendElements({
	 action = "fill",
	 fillColor = { alpha = 0.25, red=1},
	 type = "rectangle"})
   flash:show()
   hs.timer.doAfter(.15,function () flash:delete() end)
end 

function switchSpace(skip,dir)
   for i=1,skip do
      hs.eventtap.keyStroke({"ctrl","fn"},dir,0) -- "fn" is a bugfix!
   end 
end

function moveWindowOneSpace(dir,switch)
   local win = getGoodFocusedWindow(true)
   if not win then return end
   local screen=win:screen()
   local uuid=screen:getUUID()
   local userSpaces=nil
   for k,v in pairs(spaces.allSpaces()) do
      userSpaces=v
      if k==uuid then break end
   end
   if not userSpaces then return end
   local thisSpace=spaces.windowSpaces(win) -- first space win appears on
   if not thisSpace then return else thisSpace=thisSpace[1] end
   local last=nil
   local skipSpaces=0
   for _, spc in ipairs(userSpaces) do
      if spaces.spaceType(spc)~="user" then -- skippable space
	 skipSpaces=skipSpaces+1
      else
	 if last and
	    ((dir=="left" and spc==thisSpace) or
	     (dir=="right" and last==thisSpace)) then
	       local newSpace=(dir=="left" and last or spc)
	       if switch then
		  -- spaces.gotoSpace(newSpace)  -- also possible, invokes MC
		  switchSpace(skipSpaces+1,dir)
	       end
	       spaces.moveWindowToSpace(win,newSpace)
	       return
	 end
	 last=spc	 -- Haven't found it yet...
	 skipSpaces=0
      end
   end
   flashScreen(screen)   -- Shouldn't get here, so no space found
end

hotkey.bind(hyper, "l",nil,
	    function() moveWindowOneSpace("right",true) end)


