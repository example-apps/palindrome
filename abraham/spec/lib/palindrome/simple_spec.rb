require 'spec_helper'

module Palindrome
  describe Simple do
    it 'take input and normalizes' do
      expect(Palindrome::Simple.input("Apple").word).to eql("apple")
    end
    context 'input is not a palindrome' do
      it 'returns false for apple' do
        expect(Palindrome::Simple.input("Apple").is_palindrome?).to eql(false)
      end
    end
    context 'input is a palindrome' do
      it 'returns true for kayak' do
        pending
      end
    end
  end
end
