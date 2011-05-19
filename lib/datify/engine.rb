require 'datify/language'

module Datify
  class Engine
    include Datify::Language
    attr_reader :date

    def initialize(string = nil)
      default_language
      @array = parse_string(string)
    end

    def date
      (self.valid?)? @date = Time.mktime(@array[2], get_month(@array[1]), @array[0]) : nil
    end

    def parse_string(string)
      (string.nil?) ? [] : string.split('-') 
    end

    def valid?
      ((@array.size == 3) && (get_month(@array[1]) != @array[1]))
    end
  end
end
