# frozen_string_literal: true

require 'rspec'
require_relative '../lib/beverage'
require_relative '../lib/house_blend'
require_relative '../lib/dark_roast'
require_relative '../lib/condiments/steamed_milk'
require_relative '../lib/condiments/mocha'
require_relative '../lib/condiments/soy'
require_relative '../lib/condiments/whip'

RSpec.describe 'Beveragas can be decorated' do
  describe 'A double mocha Dark Roast' do
    it 'returns correct description' do
      beverage = DarkRoast.new
      beverage = Mocha.new(beverage: beverage)
      beverage = Mocha.new(beverage: beverage)

      expect(beverage.description).to eq('Dark Roast, mocha, mocha')
    end

    it 'charges the correct amount' do
      beverage = DarkRoast.new
      beverage = Mocha.new(beverage: beverage)
      beverage = Mocha.new(beverage: beverage)

      expect(beverage.cost).to eq([0.99, 0.20, 0.20].sum.round(2))
    end
  end

  describe 'A House Blend with soy, mocha and whip' do
    it 'returns correct description' do
      beverage = HouseBlend.new
      beverage = Soy.new(beverage: beverage)
      beverage = Mocha.new(beverage: beverage)
      beverage = Whip.new(beverage: beverage)

      expect(beverage.description).to eq('House Blend, Soy, mocha, Whip')
    end

    it 'charges the correct amount' do
      beverage = HouseBlend.new
      beverage = Soy.new(beverage: beverage)
      beverage = Mocha.new(beverage: beverage)
      beverage = Whip.new(beverage: beverage)

      expect(beverage.cost).to eq([0.89, 0.15, 0.20, 0.10].sum.round(2))
    end
  end
end
