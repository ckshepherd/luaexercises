
KeyMap = {['a']= "2", ['b']= "22", ['c']= "222",
		['d']= "3", ['e']= "33", ['f']= "333",
		['g']= "4", ['h']= "44", ['i']= "444",
		['j']= "5", ['k']= "55", ['l']= "555",
		['m']= "6", ['n']= "66", ['o']= "666",
		['p']= "7", ['q']= "77", ['r']= "777", ['s']= "7777",
		['t']= "8", ['u']= "88", ['v']= "888", 
		['w']= "9", ['x']= "99", ['y']= "999", ['z']= "9999",
		[' ']= "0"}
		
local file = "C-large-practice"
io.input(file..".in")
io.output(file..".out")

function DecodeMessage(letters)
  local previousMatch = nil
	local output = {}
	for curLetter in letters:gmatch("[ %w]") do
		local letterKey = KeyMap[curLetter]
		local firstLetterInKey = string.sub(letterKey, 1 ,1)
		if firstLetterInKey ~= previousMatch then
			output[#output+1] = letterKey 

		else
			insertBreak = " "..letterKey
			output[#output+1] = insertBreak
		end
		
   previousMatch = firstLetterInKey
    
	end
  
  local result = table.concat(output,"")
  return result
	
end

local numCases = tonumber(io.read()) or 0
print("NumCases: "..numCases)

for case = 1,numCases do
		local letters = io.read()
		
		
		local answer = string.format("Case #%d: %s", case, DecodeMessage(letters))
		print (answer)
		
		io.write(answer.."\n")
end
