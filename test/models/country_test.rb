require 'test_helper'

class CountryTest < ActiveSupport::TestCase

  def setup
    @country = Country.new(name: "Example Country")
  end

  test "should be valid" do
    assert @country.valid?
  end

  test "name should be present" do
    @country.name = "     "
    assert_not @country.valid?
  end

  test "name should not be too long" do
    @country.name = "a" * 51
    assert_not @country.valid?
  end

end
