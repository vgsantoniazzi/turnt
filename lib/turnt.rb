module Turnt
  def method_missing(method, *args)
    super(method, *args) unless has?(method) || methods.include?(method)
    value = send(instance_method(method))
    if value.nil?
      false
    else
      true
    end
  end

  def instance_method(method)
    "#{method}".slice!(4..method.size - 2)
  end

  def has?(method)
    "#{method}".include?("has_")
  end
end
