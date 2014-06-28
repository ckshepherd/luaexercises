
-- input
googleString = 
"this is a test foobar all your base class pony along"


function reverseWords(a)
	
	-- iterate through string placing each word in table "words".
        local function reverse(s)
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
		
		-- place into table "stringTable" using the seperator ":"?
		-- http://stackoverflow.com/questions/19907916/split-a-string-using-string-gmatch-in-lua
		
        local stringTable = {}
        for i in a:gmatch("[^;]+") do
                if not i:match("%d") then
                        table.insert(stringTable,reverse(i))
                end
        end
        return table.concat(stringTable," : ")
end
 
print(reverseWords(googleString))

