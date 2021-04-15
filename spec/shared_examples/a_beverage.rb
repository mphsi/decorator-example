# frozen_string_literal: true

require 'rspec'

RSpec.shared_examples 'a beverage' do |description, cost|
  describe 'description' do
    it 'returns the Beverage description' do
      expect(subject.description).to eq(description)
    end
  end

  describe 'cost' do
    it 'returns the Beverage cost' do
      expect(subject.cost).to eq(cost)
    end
  end
end
