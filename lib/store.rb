require 'redis'
require './lib/validation'

class Store
  KEY = 'status_code'
  include ::Validation

  def set(value)
    return false unless ensure_number(value)
    return false unless ensure_present(value)
    conn.set(KEY, value)
  end

  def get
    conn.get(KEY) || 200
  end

  private

  def conn
    @_conn ||= Redis.new
  end
end
