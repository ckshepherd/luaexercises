
StoreCredit = {}

function StoreCredit:Input(input)
	inputfile = io.input("input.txt")

function StoreCredit:Output(output)
	outputfile = io.output("output.txt")

function StoreCredit:Init(count, input, output)
	lncount = count
	Case = {}
	Input(inputfile)
	Output(outputfile)
end

function StoreCredit:FindCase()
	local line_num = 1
	local count = lncount
	for line in inputfile:lines() do

function StoreCredit:Solve(id)
	local result = {"Case #", id, ": ", "\r\n"}
	print(table.concat(result))
end

