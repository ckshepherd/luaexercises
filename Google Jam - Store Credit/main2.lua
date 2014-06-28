-- Shepherd's algorithm. Test each item to see if it any item after it 
-- add up to 'credit'. Return both item indices when answer is found.
function FindBestStoreCredit( credit, itemprices )
	for i=(1),(#itemprices-1) do
		for j=(i+1),(#itemprices) do
			if itemprices[i] + itemprices[j] == credit then
				return i,j
			end
		end
	end
end


-- Opens a file for read and another for write using the same name
local file = "input"
io.input( file..".in" )
io.output( file..".out" )

-- Reads the number of cases
local numCases = tonumber( io.read() )
print ( "Num Cases: " .. numCases ) 

for case=1,numCases do
		
	-- Reads data for each case
	local credit = tonumber( io.read() )
	local numitems = tonumber( io.read() )
	local itemprices = {}
	
	-- Tokenize and converting to number type
	local itemsLine = io.read()
	for itemPrice in string.gmatch( itemsLine, "[^%s]+" ) do
		itemprices[#itemprices+1] = tonumber( itemPrice )
	end
	
	--print( "Credit: " .. credit )
	--print( "Num Items: " .. numitems )
	--print( "Item prices: " .. table.concat( itemprices, ", " ) )
	
	-- Get answer
	local item1,item2 = FindBestStoreCredit( credit, itemprices )
	
	-- Format answer
	local answer = string.format( "Case #%d: %d %d", case, item1, item2 )
	print( answer )
	
	-- Write answer to output file
	io.write( answer.."\n" )
end