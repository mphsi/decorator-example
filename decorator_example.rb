# frozen_string_literal: true

require_relative 'lib/beverage'
require_relative 'lib/dark_roast'
require_relative 'lib/house_blend'

dark_roast = DarkRoast.new
house_blend = HouseBlend.new

puts "Price of a Dark Roast is: $#{dark_roast.cost}"
puts "Price of a House Blend is: $#{house_blend.cost}"

dark_roast_mocha = dark_roast
house_blend_soy_steamed_milk = house_blend

puts "Price of a Dark Roast, mocha is $#{dark_roast_mocha.cost}"
puts "Price of a House Blend, soy, steamed milk is $#{house_blend_soy_steamed_milk.cost}"
