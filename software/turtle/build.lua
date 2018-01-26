--build
--by truhgoj

local tArgs = {...}

if not fs.exists("/lib/adt.lua") or fs.isDir("/lib/adt.lua") then
    local url = "http://turtlescripts.com/downloadScript.php?id="
    local vmap = {}
    vmap["CraftOS 1.3"] = "gjdh1v"
    vmap["CraftOS 1.4"] = "gjdh1u"
        
    vmap["TurtleOS 1.3"] = "gjdh1v"
    vmap["TurtleOS 1.4"] = "gjdh1u"
    
    print "/lib/adt.lua not found, trying to download it.\n"
    local response = http.get( url .. vmap[os.version()] )
    if response then
        print "Download successful.\n"
        local sResponse = response.readAll()
        response.close()
        fs.makeDir("lib")
        local file = fs.open("/lib/adt.lua", "w")
        file.write(sResponse)
        file.close()
    else
        print "Download Failed.\n"
        if not http then
            print "http API is disabled\n"
        end
    end
end 

os.loadAPI("/lib/adt.lua")
 
function buildSlice(sWidth, sBorder)
  if sWidth==nil then
    sWidth=1
  end
  if sBorder==nil then
    sBorder=0
  end
  sWidth = sWidth-2
  adt.placeDown()
  --Left Side
  adt.turnLeft()
  for i=1, sWidth, 2 do
    adt.forward()
    adt.placeDown()
  end
  for i=1, sBorder do
    adt.place()
    adt.up()
  end
  for i=1, sBorder do
    adt.down()
  end
  adt.turnLeft(2)
  for i=1, sWidth, 2 do
    adt.forward()
  end
  --Right Side
  for i=1, sWidth, 2 do
    adt.forward()
    adt.placeDown()
  end
  for i=1, sBorder do
    adt.place()
    adt.up()
  end
  for i=1, sBorder do
    adt.down()
  end
  adt.turnLeft(2)
  for i=1, sWidth, 2 do
    adt.forward()
  end
  adt.turnRight()
end
 
if #tArgs ~= 3 then
  print("Incorrect usage of program!")
  print("build <width> <length> <border>")
else
  local width = math.floor( tonumber(tArgs[1]) )
  local length = math.floor( tonumber(tArgs[2]) )
  local border = math.floor( tonumber(tArgs[3]) )
 
  for i=1, length do
    adt.forward()
    buildSlice(width, border)
  end
end