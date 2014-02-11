module Palindrome

  class Solution
    class << self
      def cleanInput(input)
        input.to_s.downcase.gsub(/[^\w]/,'')
      end
    end
  end

  class Solution1 < Solution
    class << self
      def check(input)
        # strip spaces
        clean_input = cleanInput(input)
        return false if clean_input.empty?
        # reverse input
        clean_input == clean_input.reverse
      end
    end
  end


  class Solution2 < Solution
    class << self
      def check(input)
        clean_input = cleanInput(input).split(//)
        return false if clean_input.empty?

        check_loop(clean_input)
      end

      def check_loop(input)
        l = input.size
        (0..(l-1)).each do |i|
          if input[i] != input[input.size-1-i]
            return false
          end
        end
        return true
      end
    end
  end

end
