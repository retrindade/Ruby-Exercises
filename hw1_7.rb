class CartesianProduct
    include Enumerable

    def initialize(seq1, seq2)
    	@seq1 = seq1
    	@seq2 = seq2
	  end

    def each
    	result = []
    	unless @seq1.empty? or @seq2.empty? 
    		@seq1.each do |s|
    			@seq2.each do |s2|
    				#result << [s, s2]
    				yield [s, s2]
    			end	
    		end	
    	end	
    	#result
    end	
end

 #c = CartesianProduct.new([:a,:b], [4,5])
 #p c.each { |elt| puts elt.inspect }