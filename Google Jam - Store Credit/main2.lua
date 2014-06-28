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
	
	print( "Credit: " .. credit )
	print( "Num Items: " .. numitems )
	print( "Item prices: " .. table.concat( itemprices, ", " ) )
	
	
	
	local answer = string.format( "Case #%d:", case )
	print( answer )
end
--"Case #1: "
--"Case #2: "
--"Case #3: "