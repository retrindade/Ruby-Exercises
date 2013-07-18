def combine_anagrams(words)
	sorted = words.map {|w| w.chars.sort.join.downcase}
 	# selected = sorted.map do |w|
 	# 	anagrams = sorted.select{|p| w.chars.sort.join == p}
 	# 	p anagrams
 	# 	anagrams.count > 1 ? anagrams : w
  # end
  final = []
	words.each_with_index do | w, i|
		r = []
		sorted.each_with_index do | elm, ind|
				r << words[ind] if sorted[i] == elm
		end
		final << r unless final.include? r
	end
	final
end

p combine_anagrams ['cars', 'for', 'potatoes', 'racs', 'four', 'scar', 'creams', 'scream']
#["acrs", "for", "aeoopstt", "acrs", "foru", "acrs", "acemrs", "acemrs"] 
