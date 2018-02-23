# frozen_string_literal: true
require_relative "spec_helper"
RSpec.describe "to_word" do
  context '#to_word' do
    it "converts 1 to `one`" do
      expect(1.to_words).to eq("one")
    end

    it "converts '1' to `one`" do
      expect("1".to_words).to eq("one")
    end

    it "converts '1,000' to `one`" do
      expect(1_000.to_words).to eq("one thousand")
    end

    it "converts 123456789 correctly " do
      expect(123_456_789.to_words).to eq("one hundred twenty-three million, four hundred fifty-six thousand, seven hundred, and eighty-nine")
    end

    it "converts 23456789 correctly " do
      expect(23_456_789.to_words).to eq("twenty-three million, four hundred fifty-six thousand, seven hundred, and eighty-nine")
    end

    it "converts 3456789 correctly " do
      expect(3_456_789.to_words).to eq("three million, four hundred fifty-six thousand, seven hundred, and eighty-nine")
    end

    it "converts 456789 correctly " do
      expect(456_789.to_words).to eq("four hundred fifty-six thousand, seven hundred, and eighty-nine")
    end

    it "converts 56789 correctly " do
      expect(56_789.to_words).to eq("fifty-six thousand, seven hundred, and eighty-nine")
    end

    it "converts 6789 correctly " do
      expect(6_789.to_words).to eq("six thousand, seven hundred, and eighty-nine")
    end

    it "raises error for non-numerical string '1d'" do
      expect { "1d".to_words }.to raise_error "A whole number is expected"
    end

    it "raises error for non-numerical string 'd1'" do
      expect { "d1".to_words }.to raise_error "A whole number is expected"
    end

    it "it extends Fixnum / Integer methods" do
       # Fixnum before Ruby 2.4, Integer from Ruby 2.4
      expect(1.methods).to include :to_words
    end
  end
end
