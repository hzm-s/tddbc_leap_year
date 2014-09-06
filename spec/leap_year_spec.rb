require 'spec_helper'

RSpec.describe 'うるう年の判定' do
  subject do
    my_year.leap?
  end

  let(:my_year) { MyYear.new(year) }

  context '2014年の場合' do
    let(:year) { 2014 }
    it { is_expected.to be_falsey }
  end

  context '2004年の場合' do
    let(:year) { 2004 }
    it { is_expected.to be_truthy }
  end

  context '2008年の場合' do
    let(:year) { 2008 }
    it { is_expected.to be_truthy }
  end

  context '2016年の場合' do
    let(:year) { 2016 }
    it { is_expected.to be_truthy }
  end

  context '1984年の場合' do
    let(:year) { 1984 }
    it { is_expected.to be_truthy }
  end
end
