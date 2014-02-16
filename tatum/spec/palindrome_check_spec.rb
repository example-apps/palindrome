require 'spec_helper'

describe PalindromeCheck do

  describe "#valid?" do

    let(:palindrome) { PalindromeCheck.new(word) }

    context 'with an empty string' do
      let(:word) { "" }
      it "should return false" do
        expect(palindrome.valid?).to be_false
      end
    end

    context "when an invalid `baseball` is passed" do
      let(:word) { "baseball" }
      it "returns false" do
        expect(palindrome.valid?).to be_false
      end
    end

    context "when valid palidrome `racecar` is passed" do
      let(:word) { "racecar" }
      it "returns true" do
        expect(palindrome.valid?).to be_true
      end
    end

    context 'when valid palidrome `RacEcaR` is passed' do
      let(:word) { "RacEcaR" }
      it 'return true even with capital letters' do
        expect(palindrome.valid?).to be_true
      end
    end

    context "when valid palidrome `!No 'x' in 'Nixon` is passed" do
      let(:word) { "!No 'x' in 'Nixon" }
      it 'returns true' do
        expect(palindrome.valid?).to be_true
      end
    end

    context "when valid palidrome `@#$%^&*()` is passed" do
      let(:word) { "@#$%^&*()" }
      it 'returns false' do
        expect(palindrome.valid?).to be_false
      end
    end

    context 'when passing numbers' do

      context "when valid palidrome `3883` is passed" do
        let(:word) { 3883 }
        it 'return true' do
          expect(palindrome.valid?).to be_true
        end
      end

      context "when valid palidrome `1337` is passed" do
        let(:word) { 1337 }
        it 'returns false' do
          expect(palindrome.valid?).to be_false
        end
      end
    end

  end

end
