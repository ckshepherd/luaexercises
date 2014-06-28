io.input( "input.in" )
io.output( "output.in" )

local firstLine = io.read()
local numCases = tonumber( firstLine )

print ( "Num Cases: " .. numCases ) 

for case=1,numCases do
	
	local credit = tonumber( io.read() )
	local numitems = tonumber( io.read() )
	local itemprices = {}
	
	local itemsLine = io.read()
	for itemPrice in string.gmatch( itemsLine, "[^%s]+" ) do
		itemprices[#itemprices+1] = tonumber( itemPrice )
	end
	
	--print( "Credit: " .. credit )
	--print( "Num Items: " .. numitems )
	--print( "Item prices: " .. table.concat( itemprices, ", " ) )
	
	local item1,item2
	for i=(1),(#itemprices-1) do
		for j=(i+1),(#itemprices) do
			if itemprices[i] + itemprices[j] == credit then
				item1 = i
				item2 = j
				break
			end
		end
	end
	
	local answer = string.format( "Case #%d: %d %d", case, item1, item2 )
	print( answer )
end
--"Case #1: "
--"Case #2: "
--"Case #3: "