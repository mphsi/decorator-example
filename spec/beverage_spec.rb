# frozen_string_literal: true

require 'rspec'
require_relative '../beverage'
require_relative 'shared_examples/a_beverage'

RSpec.describe Beverage do
  subject(:beverage) { described_class.new('A hot drink', 1.0) }

  it_should_behave_like 'a beverage', 'A hot drink', 1.0
end
