googleString = "this is a test foobar all your base class pony along"

function ReverseWords(s)
	-- Tokenize
	local words = {}
	for a in s:gmatch("[^%s]+") do
			table.insert(words,a)
	end
	
	local reversed = {}
	for i = 1,#words do
		reversed[i] = words[#words-i+1]
	end
	
	return table.concat(reversed," ")
end

local reversedString = ReverseWords( googleString )

print( reversedString )

io.input( "input.txt" )
io.output( "output.txt" )

local numCases = tonumber( io.read() ) or 0
print( "NumCases: "..numCases )

for case=1,numCases do
	local line = io.read()
	local answer = string.format( "Case #%d: %s", case, ReverseWords( line ) )
	print( answer )
end
