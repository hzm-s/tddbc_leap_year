require 'spec_helper'

RSpec.describe 'うるう年の判定' do
  subject do
    my_year.leap?
  end

  let(:my_year) { MyYear.new(year) }

  context '2014年の場合' do
    let(:year) { 2014 }
    it { is_expected.to be_truthy }
  end
end
