function ReverseWords(s)
	-- Tokenize
	local words = {}
	for a in s:gmatch("[^%s]+") do
		words[#words+1] = a
	end
	
	-- Create a reversed version of the 'words' table
	local reversed = {}
	for i = 1,#words do
		reversed[i] = words[#words-i+1]
	end
	
	-- Concat reversed version with spaces and return string
	return table.concat(reversed," ")
end

-- Opens a file for read and another for write using the same name
local file = "input"
io.input( file..".in" )
io.output( file..".out" )

-- Reads the number of cases
local numCases = tonumber( io.read() ) or 0
print( "NumCases: "..numCases )

-- Reads data for each case
for case=1,numCases do
	local line = io.read()
	
	-- Get and format answer
	local answer = string.format( "Case #%d: %s", case, ReverseWords( line ) )
	print( answer )
	
	-- Write answer to output file
	io.write( answer.."\n" )
end
