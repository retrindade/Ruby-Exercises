def palindrome? string
	string_down = string.gsub(/\W+/, '').downcase
	reverted = string_down.reverse
	string_down == reverted
end



def count_words frase
	test1 = frase.gsub(/(?=\S)\W/, '').downcase
	array1 = test1.split(' ')

	h = Hash.new
	array1.each do |elm|
		h[elm] = 1 + (h[elm] || 0)
	end
	#puts "hash: #{h}"
	h
end


