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

  context '2006年の場合' do
    let(:year) { 2006 }
    it { is_expected.to be_falsey }
  end

  context '2008年の場合' do
    let(:year) { 2008 }
    it { is_expected.to be_truthy }
  end

  context '2009年の場合' do
    let(:year) { 2009 }
    it { is_expected.to be_falsey }
  end

  context '2016年の場合' do
    let(:year) { 2016 }
    it { is_expected.to be_truthy }
  end

  context '1984年の場合' do
    let(:year) { 1984 }
    it { is_expected.to be_truthy }
  end

  context '1981年の場合' do
    let(:year) { 1981 }
    it { is_expected.to be_falsey }
  end

  context '2100年の場合' do
    let(:year) { 2100 }
    it { is_expected.to be_falsey }
  end

  context '2200年の場合' do
    let(:year) { 2200 }
    it { is_expected.to be_falsey }
  end

  context '2300年の場合' do
    let(:year) { 2300 }
    it { is_expected.to be_falsey }
  end
end
