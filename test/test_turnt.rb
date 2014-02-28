require 'helper'

class TestTurnt < Test::Unit::TestCase
  def test_has_name
    organization = Organization.new
    assert_equal true, organization.has_name?
  end

  def test_has_partners
    organization = Organization.new
    assert_equal false, organization.has_partners?
  end

  def test_method_missing_without_has
    organization = Organization.new
    assert_raise(NoMethodError) { organization.ha_partners? }
  end

  def test_method_missing_with_has
    organization = Organization.new
    assert_raise(NoMethodError) { organization.has_invalid_attribute? }
  end
end

class Organization
  include Turnt
  def name
    "fuu bazz"
  end

  def partners
  end
end
