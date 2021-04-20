# frozen_string_literal: true

require 'rspec'
require 'ostruct'
require_relative '../lib/condimentable'

class BeverageCondiment
  include Condimentable

  attr_reader :beverage, :condiment

  def initialize(beverage:)
    @beverage = beverage
    @condiment = OpenStruct.new(description: 'spiced', cost: 1.0)
  end
end

RSpec.describe Condimentable do
  subject(:condimented_beverage) { BeverageCondiment.new(beverage: beverage) }
  let(:beverage) { double('Beverage', description: 'A tasteful beverage', cost: 0.89) }

  describe 'description' do
    it 'Concatenates condiment description to beverage description' do
      expect(condimented_beverage.description).to eq("#{beverage.description}, spiced")
    end
  end

  describe 'cost' do
    it 'raises an error' do
      expect(condimented_beverage.cost).to eq(beverage.cost + 1.0)
    end
  end
end
