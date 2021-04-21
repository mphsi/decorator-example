# frozen_string_literal: true

require 'rspec'

RSpec.shared_examples 'a condimented beverage' do
  it 'returns beverage description with the condiment description' do
    expect(subject.description).to eq("#{beverage.description}, #{condiment.description}")
  end

  it 'returns the beverage cost + the condiment cost' do
    expect(subject.cost).to eq(beverage.cost + condiment.cost)
  end
end
