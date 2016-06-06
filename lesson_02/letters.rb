vowel = Hash.new
arr = ("a".."z").to_a
arr.each_with_index do |letter, number|
	if letter == "a" || letter == "e" || letter == "i" || letter == "o" || letter == "u" 
		vowel[letter] = number + 1
	end
end
puts vowel