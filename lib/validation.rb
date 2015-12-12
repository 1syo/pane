module Validation
  def ensure_number(value)
    Integer(value)
  rescue ArgumentError
    false
  end

  def ensure_present(value)
    ! value.empty?
  end
end
