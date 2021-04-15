# frozen_string_literal: true

require 'rspec'
require_relative '../dark_roast'

RSpec.describe DarkRoast do
  subject(:dark_roast) { described_class.new }

  it_should_behave_like 'a beverage', 'Dark Roast', 0.99
end
