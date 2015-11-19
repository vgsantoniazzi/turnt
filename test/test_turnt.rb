require 'test_helper'

class TestTurnt < Test::Unit::TestCase
  def setup
    @organization = Organization.new
  end

  def test_has_name
    assert_equal true, @organization.has_name?
  end

  def test_has_street
    assert_equal false, @organization.has_street?
  end

  def test_has_partners
    assert_equal true, @organization.has_partners?
  end

  def test_has_employes
    assert_equal false, @organization.has_employes?
  end

  def test_method_missing_without_has
    assert_raise(NoMethodError) { @organization.ha_partners? }
  end

  def test_method_missing_with_has
    assert_raise(NoMethodError) { @organization.has_invalid_attribute? }
  end
end

class Organization
  include Turnt
  def name
    "fill_string"
  end

  def street
    ""
  end

  def partners
    ["victor", "John"]
  end

  def employes
    []
  end

  def hiring
    false
  end
end
