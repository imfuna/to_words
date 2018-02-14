# frozen_string_literal: true
require_relative "../spec_helper"
RSpec.describe "DIVISIONS" do
  let(:subject) do
    ToWords::Divisions::DIVISIONS
  end

  it { is_expected.to be_a Array }

  it "has 7 items" do
    expect(subject.length).to eq 7
  end

  it "has '' at index 0" do
    expect(subject[0]).to eq ""
  end

  it "has thousand at index 1" do
    expect(subject[1]).to eq "thousand"
  end

  it "has million at index 2" do
    expect(subject[2]).to eq "million"
  end

  it "has billion at index 3" do
    expect(subject[3]).to eq "billion"
  end

  it "has trillion at index 4" do
    expect(subject[4]).to eq "trillion"
  end

  it "has quadrillion at index 5" do
    expect(subject[5]).to eq "quadrillion"
  end

  it "has quintrillion at index 6" do
    expect(subject[6]).to eq "quintrillion"
  end

  it "is expected to be frozen" do
    expect(subject.frozen?).to be true
  end
end
