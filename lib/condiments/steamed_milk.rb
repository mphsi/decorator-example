# frozen_string_literal: true

require 'ostruct'
require_relative '../condimentable'

# Steamed Milk condiment
class SteamedMilk
  include Condimentable

  attr_reader :beverage, :condiment

  def initialize(beverage:)
    @beverage = beverage
    @condiment = OpenStruct.new(description: 'Steamed milk', cost: 0.10)
  end
end
