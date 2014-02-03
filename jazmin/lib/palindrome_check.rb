class PalindromeCheck

  def is_palindrome?(string)
    string = cleanup(string)
    !string.empty?  && palindrome_simple_check(string)
  end

  def is_palindrome2?(string)
    string = cleanup(string)
    !string.empty? && palindrome_complex_check(string)
  end

  private
  def cleanup(string)
    string.to_s.gsub(/[^0-9A-Za-z]/, '').downcase
  end

  def palindrome_simple_check(string)
    string == string.reverse
  end

  def palindrome_complex_check(string)
    string = string.split(//)
    size = string.length
    0.upto(size/2) { |index| return false if string[index] != string[size - 1 - index] }
    true
  end

end
