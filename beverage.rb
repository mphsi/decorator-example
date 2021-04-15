# frozen_string_literal: true

class Beverage
  attr_reader :description

  def initialize(description, cost)
    @description = description
    @cost = cost
  end

  def cost
    @cost
  end
end
