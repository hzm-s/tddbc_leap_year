require 'spec_helper'

RSpec.describe 'うるう年の判定' do
  subject do
    my_year.leap?
  end

  let(:my_year) { MyYear.new(year) }

  context 'nilを渡した場合' do
    let(:year) { nil }
    it { is_expected.to be_falsey }
  end

  {
    2014 => :be_falsey,
    2004 => :be_truthy,
    2006 => :be_falsey,
    2008 => :be_truthy,
    2009 => :be_falsey,
    2016 => :be_truthy,
    1984 => :be_truthy,
    1981 => :be_falsey,
    2100 => :be_falsey,
    2200 => :be_falsey,
    2300 => :be_falsey,
    2000 => :be_truthy,
    2400 => :be_truthy,
    2800 => :be_truthy,
  }.each do |y, expected|
    context "#{y}年の場合" do
      let(:year) { y }
      it { is_expected.to send(expected) }
    end
  end
end
