class Palindrome::Shared
  attr_accessor :word

  class << self
    def input(arg)
      string = arg.to_s.downcase
      new(string)
    end
  end

  def initialize(string)
    @word = string
  end
end
