words = 'cab' .. 'car'

words.min

words.max

words.include?('can')

words.reject {|subrange| subrange < 'cal'} # reject values below a specified range value
=> ["cal", "cam", "can", "cao", "cap", "caq", "car"]

# iterate through each value and perform a task
words.each { |word| puts 'Hello ' + word} 
