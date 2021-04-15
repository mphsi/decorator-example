# frozen_string_literal: true

require 'rspec'
require_relative '../beverage'

RSpec.describe Beverage do
  subject(:beverage) { described_class.new }

  describe 'description' do
    it 'is initialized nil' do
      expect(subject.description).to be_nil
    end
  end

  describe '#cost' do
    it 'returns 0.0' do
      expect(subject.cost).to eq(0.0)
    end
  end
end
