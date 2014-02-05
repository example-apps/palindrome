class Palindrome::Simple < Palindrome::Shared
  class << self
  end

  def is_palindrome?
    word == word.reverse
  end
end
