require 'spec_helper'

module Palindrome
  describe Simple do
    it 'take input and normalizes' do
      expect(Palindrome::Simple.input("Apple").word).to eql("apple")
    end
    context 'input is not a palindrome' do
      it 'returns false for Apple' do
        expect(Palindrome::Simple.input("Apple").is_palindrome?).to eql(false)
      end
      it 'returns false for :Apple' do
        expect(Palindrome::Simple.input(:Apple).is_palindrome?).to eql(false)
      end
      it 'returns false for 100' do
        expect(Palindrome::Simple.input(100).is_palindrome?).to eql(false)
      end
      it 'returns false for 100.0' do
        expect(Palindrome::Simple.input(100.0).is_palindrome?).to eql(false)
      end
    end
    context 'input is a palindrome' do
      it 'returns true for kayak' do
        expect(Palindrome::Simple.input("Kayak").is_palindrome?).to eql(true)
      end
      it 'returns true for :Kayak' do
        expect(Palindrome::Simple.input(:Kayak).is_palindrome?).to eql(true)
      end
      it 'returns true for 1001' do
        expect(Palindrome::Simple.input(1001).is_palindrome?).to eql(true)
      end
      it 'returns true for 10.01' do
        expect(Palindrome::Simple.input(10.01).is_palindrome?).to eql(true)
      end
      it "returns true for phrase madam I'm Adam" do
        expect(Palindrome::Simple.input("madam, I'm Adam").is_palindrome?).to eql(true)
      end
      it "returns true for po!p" do
        expect(Palindrome::Simple.input("po!p").is_palindrome?).to eql(true)
      end
    end
  end
end
