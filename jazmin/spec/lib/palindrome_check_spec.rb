require 'spec_helper'

describe PalindromeCheck do
  subject { described_class.new }

  context 'simple method' do
    it 'when no palindrome, returns false' do
      expect(subject.is_palindrome?('racecaraa')).to be_false
    end

    it 'palindrome word, returns true' do
      expect(subject.is_palindrome?('racecar')).to be_true
    end

    it 'handles strings with special characters' do
      expect(subject.is_palindrome?('a man, a plan, a cat, a ham, a yak, a yam, a hat, a canal-Panama!')).to be_true
    end

    it 'handles strings with capital letters' do
      expect(subject.is_palindrome?('As I pee, sir, I see Pisa!')).to be_true
    end

    it 'handles numbers' do
      expect(subject.is_palindrome?(3883)).to be_true
    end

    it 'returns false for invalid words' do
      expect(subject.is_palindrome?('!!')).to be_false
    end
  end

  context 'complicated method' do
    it 'when no palindrome, returns false' do
      expect(subject.is_palindrome2?('racecaraa')).to be_false
    end

    it 'palindrome word, returns true' do
      expect(subject.is_palindrome2?('racecar')).to be_true
    end

    it 'handles strings with special characters' do
      expect(subject.is_palindrome2?('a man, a plan, a cat, a ham, a yak, a yam, a hat, a canal-Panama!')).to be_true
    end

    it 'handles strings with capital letters' do
      expect(subject.is_palindrome2?('As I pee, sir, I see Pisa!')).to be_true
    end

    it 'handles numbers' do
      expect(subject.is_palindrome2?(3883)).to be_true
    end

    it 'returns false for invalid words' do
      expect(subject.is_palindrome2?('!!')).to be_false
    end
  end
end

