# frozen_string_literal: true

require 'ostruct'
require_relative '../condimentable'

# Soy condiment
class Soy
  include Condimentable

  attr_reader :beverage, :condiment

  def initialize(beverage:)
    @beverage = beverage
    @condiment = OpenStruct.new(description: 'Soy', cost: 0.15)
  end
end
