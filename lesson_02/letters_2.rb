vowel = Hash.new
arr = ("a".."z").to_a
arr.each_with_index do |letter, number|
	if "aeiou".include? (letter)  
		vowel[letter] = number + 1
	end
end
puts vowel