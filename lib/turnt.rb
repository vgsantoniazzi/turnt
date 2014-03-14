module Turnt
  def method_missing(method, *args)
    super(method, *args) unless has?(method) || methods.include?(method)
    @method = method; @value = send(instance_method); validate_data_types!
  end

  def nil_validation!
    nil? if @value.nil?
  end

  def numeric_validation!
    nil? if @value.is_a?(Numeric)
  end

  def string_validation!
    empty? if @value.is_a?(String)
  end

  def symbol_validation!
    nil? if @value.is_a?(Symbol)
  end

  def collection_validation!
    empty? if @value.is_a?(Array) || @value.is_a?(Hash)
  end

  private

  def validate_data_types!
    validation_parts.first
  end

  def validation_parts
    public_methods(true).grep(/_validation!$/).map{ |m| send(m) }.compact
  end

  def nil?
    if @value.nil?
      return false
    else
      return true
    end
  end

  def empty?
    if @value.empty?
      return false
    else
      return true
    end
  end

  def instance_method
    "#{@method}".slice!(4..@method.size - 2)
  end

  def has?(method)
    "#{method}".include?("has_")
  end
end
