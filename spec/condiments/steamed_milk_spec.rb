# frozen_string_literal: true

require 'rspec'
require 'ostruct'
require_relative '../../lib/condiments/steamed_milk'
require_relative '../shared/a_condimentable_beverage'

RSpec.describe SteamedMilk do
  subject(:condimented_beverage) { described_class.new(beverage: beverage) }

  it_should_behave_like 'a condimented beverage' do
    let(:beverage) { double('Beverage', description: 'A beverage', cost: 0.89) }
    let(:condiment) { condimented_beverage.condiment }
  end
end
