require 'spec_helper'

module Palindrome
  describe Complex do
    it 'take input and normalizes' do
      expect(Palindrome::Complex.input("Apple").word).to eql("apple")
    end
    context 'input is not a palindrome' do
      it 'returns false for Apple' do
        expect(Palindrome::Complex.input("Apple").is_palindrome?).to eql(false)
      end
      it 'returns false for :Apple' do
        expect(Palindrome::Complex.input(:Apple).is_palindrome?).to eql(false)
      end
      it 'returns false for 100' do
        expect(Palindrome::Complex.input(100).is_palindrome?).to eql(false)
      end
      it 'returns false for 100.0' do
        expect(Palindrome::Complex.input(100.0).is_palindrome?).to eql(false)
      end
    end
    context 'input is a palindrome' do
      it 'returns true for kayak' do
        expect(Palindrome::Complex.input("Kayak").is_palindrome?).to eql(true)
      end
      it 'returns true for :Kayak' do
        expect(Palindrome::Complex.input(:Kayak).is_palindrome?).to eql(true)
      end
      it 'returns true for 1001' do
        expect(Palindrome::Complex.input(1001).is_palindrome?).to eql(true)
      end
      it 'returns true for 10.01' do
        expect(Palindrome::Complex.input(10.01).is_palindrome?).to eql(true)
      end
      it "returns true for phrase madam I'm Adam" do
        expect(Palindrome::Complex.input("madam, I'm Adam").is_palindrome?).to eql(true)
      end
      it "returns true for po!p" do
        expect(Palindrome::Complex.input("po!p").is_palindrome?).to eql(true)
      end
    end
  end
end
