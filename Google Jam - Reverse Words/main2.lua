googleString = "this is a test foobar all your base class pony along"

function reverseWords(s)
	local newWords = ""
	local words = {}
	for a in s:gmatch("[^%s]+") do
			table.insert(words,a)
	end
	
	-- iterate through table "words" backwards. Concat into empty string "newWords".
	for i = #words,1,-1 do
			newWords = newWords..words[i].." "
	end
	return newWords
end


local reversedString = reverseWords( googleString )

print( reversedString )