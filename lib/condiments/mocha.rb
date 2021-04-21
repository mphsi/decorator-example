# frozen_string_literal: true

require 'ostruct'
require_relative '../condimentable'

# Mocha condiment
class Mocha
  include Condimentable

  attr_reader :beverage, :condiment

  def initialize(beverage:)
    @beverage = beverage
    @condiment = OpenStruct.new(description: 'mocha', cost: 0.20)
  end
end
