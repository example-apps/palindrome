class PalindromeCheck

  def initialize(string)
    @string = string
  end

  def valid?
    if word.empty?
      false
    else
      !array_of_bools.include?(false)
    end
  end

  private

  def array_of_bools
    word.chars.each_with_index.map do |char, index|
      char == word[word.size - 1 - index]
    end
  end

  def word
    @word ||= @string.to_s.gsub(/[^0-9A-Za-z]/, '').downcase
  end

end
