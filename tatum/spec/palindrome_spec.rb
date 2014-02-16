require 'spec_helper'

describe "#palindrome?" do

  it "should handle empty Strings" do
    expect(''.palindrome?).to be_false
  end

  it "returns false with an in-valid palidrome" do
    expect('baseball'.palindrome?).to be_false
  end

  it "returns true with an valid palidrome" do
    expect('racecar'.palindrome?).to be_true
  end

  it 'return true even with capital letters' do
    expect('RacEcaR'.palindrome?).to be_true
  end

  it 'returns true even with special characters' do
    expect("!No 'x' in 'Nixon".palindrome?).to be_true
  end

  it 'returns false for invalid words' do
    expect('@#$%^&*()'.palindrome?).to be_false
  end

  context 'when passing numbers' do
    it 'return true with a valid palindrome' do
      expect(3883.palindrome?).to be_true
    end

    it 'returns false with an in-valid palindrome' do
      expect(1337.palindrome?).to be_false
    end
  end

end
