class Numeric
  @@currencies = {'yen' => 0.013, 'euro' => 1.292, 'rupee' => 0.019, 'dollar'=> 1}
  def method_missing(method_id) 
    singular_currency = method_id.to_s.gsub( /s$/, '')
    if @@currencies.has_key?(singular_currency)
        self * @@currencies[singular_currency]
    else
      super
    end
  end

  def in(currency) 
		method_missing(currency)
  end
end

class String
	def palindrome?
		string_down = self.gsub(/\W+/, '').downcase
		reverted = string_down.reverse
		string_down == reverted
	end
end

class Array
	def method_missing(method_id)
		if method_id.to_s == "palindrome?"
			self.eql? self.reverse
		end
	end
end
puts "a man a plan a canal panama".palindrome?

