local file = "input"
io.input( file..".in" )
io.output( file..".out" )

local firstLine = io.read()
local numCases = tonumber( firstLine )

print ( "Num Cases: " .. numCases ) 

function FindBestStoreCredit( credit, itemprices )
	for i=(1),(#itemprices-1) do
		for j=(i+1),(#itemprices) do
			if itemprices[i] + itemprices[j] == credit then
				return i,j
			end
		end
	end
end

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
	
	local item1,item2 = FindBestStoreCredit( credit, itemprices )
	
	local answer = string.format( "Case #%d: %d %d", case, item1, item2 )
	print( answer )
	
	io.write( answer.."\n" )
end