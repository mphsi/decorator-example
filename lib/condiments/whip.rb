# frozen_string_literal: true

require 'ostruct'
require_relative '../condimentable'

# Whip condiment
class Whip
  include Condimentable

  attr_reader :beverage, :condiment

  def initialize(beverage:)
    @beverage = beverage
    @condiment = OpenStruct.new(description: 'Whip', cost: 0.10)
  end
end
