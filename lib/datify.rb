require 'datify/engine'

class String
  def is_time?
    Datify::Engine.new(self).valid?
  end

  def to_time
    Datify::Engine.new(self).date
  end
end
