# frozen_string_literal: true

require 'rspec'
require_relative '../lib/house_blend'

RSpec.describe HouseBlend do
  subject(:house_blend) { described_class.new }

  it_should_behave_like 'a beverage', 'House Blend', 0.89
end
