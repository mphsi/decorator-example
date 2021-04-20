# frozen_string_literal: true

# Condimentable module is meant to be included by Condiment.
# The Condiments are expected to be composed of a Beverage.
#
module Condimentable
  def description
    beverage.description
    "#{beverage.description}, #{condiment.description}"
  end

  def cost
    beverage.cost + condiment.cost
  end
end
