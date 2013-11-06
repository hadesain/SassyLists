require 'compass'
extension_path = File.expand_path(File.join(File.dirname(__FILE__), ".."))
Compass::Frameworks.register('SassyLists', :path => extension_path)

#  Version is a number. If a version contains alphas, it will be created as a prerelease version
#  Date is in the form of YYYY-MM-DD
module SassyLists
  VERSION = "0.3.4"
  DATE = "2013-11-06"
end

module Sass::Script::Functions
  def random(max = Sass::Script::Number.new(100))
    Sass::Script::Number.new(rand(max.value), max.numerator_units, max.denominator_units)
  end
end