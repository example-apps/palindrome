class Palindrome::Complex < Palindrome::Shared
  class << self
  end

  def is_palindrome?(index=0, index_size=nil)
    index_size = index_size || word.length - 1
    if word[index] == word[index_size] && index_size >= index
      is_palindrome?(index += 1, index_size -= 1)
      true
    else
      false
    end
  end
end
