require 'test_helper'

class UnitValidationTest < ActiveSupport::TestCase

  def setup
    @p = Package.new
  end

  test "empty package is invalid" do
    assert @p.invalid?
  end

  test "Height should have error with no data" do
    @p.valid?
    assert @p.errors[:height].present?
  end

  test "Height should not have error with number" do
    @p.height=0
    @p.valid?
    assert @p.errors[:height].blank?
  end

  test "Count should not have error with number" do
    @p.count=2
    @p.valid?
    assert @p.errors[:count].blank?
  end

  test "Count should have error with length 2mm" do
    @p.count="2mm"
    @p.valid?
    assert @p.errors[:count].present?
  end

  test "Width should not have error with mass" do
    @p.width="2kg"
    @p.valid?
    assert @p.errors[:width].blank?
  end

  test "Width should not have error with length" do
    @p.width="2mm"
    @p.valid?
    assert @p.errors[:width].blank?
  end

  test "Width should have error with unitless" do
    @p.width="2"
    @p.valid?
    assert @p.errors[:width].present?
  end

end
