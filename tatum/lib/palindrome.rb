module Palindrome

  def palindrome?
    results(
      self.to_s.gsub(/[^0-9A-Za-z]/, '').downcase
    )
  end

  private

  def results(word)
    if word.empty?
      false
    else
      word == word.reverse
    end
  end

end

class String
  include Palindrome
end

class Fixnum
  include Palindrome
end
