def combine_anagrams(words)
  sorted = words.collect {|x| x.chars.sort.join }
  #puts sorted
  result = Array.new
  out = Array.new
  counter = Array.new
  sorted.each do |elem|
   x = 0
   sorted.each do |elem2|
		if((elem.downcase == elem2.downcase) and (!counter.include?x))
			result << words[x]
			counter << x
		end
		x +=1	 
   end
	#puts "Result: #{result.to_s}"
	out << result
	result = result.clear
  end
  puts "Out: #{out}"
out
end

#puts combine_anagrams ['cars', 'for', 'potatoes', 'racs', 'four','scar', 'creams', 'scream']