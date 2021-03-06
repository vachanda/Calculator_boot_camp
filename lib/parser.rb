# convert input string to arithmetic operation 
class Parser
	ALLOWED_METHODS = ["add", "subtract", "multiply", "divide", "cancel"]
	def initialize
		@calculator = Calculator.new
	end

	def parse(string)
		command_array = string.split
		return @calculator.send(command_array[0],command_array[1].to_f) if ALLOWED_METHODS.include?(command_array[0])
		"Invalid Command"
	end
end