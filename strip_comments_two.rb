strings_array = ["apples, plums ", "pears ! and bananas", "pears ", "oranges # no lemons", "oranges "]
characters_to_remove = ["%", "!", "#"]

strings_array.delete_if { |string| characters_to_remove.any? { |char| string.include?(char) } }

p strings_array
