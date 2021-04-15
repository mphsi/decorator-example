# frozen_string_literal: true

require 'rspec'
require_relative '../house_blend'

RSpec.describe HouseBlend do
  subject(:house_blend) { described_class.new }

  describe 'description' do
    it 'returns House Blend description' do
      expect(house_blend.description).to eq('House Blend')
    end
  end

  describe '#cost' do
    it 'returns House Blend price' do
      expect(house_blend.cost).to eq(0.99)
    end
  end
end
