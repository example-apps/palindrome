require 'spec_helper'

module Palindrome
  describe Solution1 do
    subject { described_class }
    context 'Solution 1: simple answer' do
      it "when given a palindrome, returns true" do
        expect(subject.check("race car")).to be_true
      end

      it "when not given a palindrome, returns false" do
        expect(subject.check("not a race car")).to be_false
      end


      it "when given random characters, returns false" do
        expect(subject.check("@$@$")).to be_false
      end

      it "works on numbers" do
        expect(subject.check(12321)).to be_true
      end

    end
  end

  describe Solution2 do
    subject { described_class }
    context 'Solution 2: complex answer' do
      it "when given a palindrome, returns true" do
        expect(subject.check("race car")).to be_true
      end

      it "when not given a palindrome, returns false" do
        expect(subject.check("not a race car")).to be_false
      end

      it "when given random characters, returns false" do
        expect(subject.check("@$@$")).to be_false
      end

      it "works on numbers" do
        expect(subject.check(12321)).to be_true
      end
    end
  end

end
