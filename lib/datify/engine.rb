require 'datify/language'

module Datify
  class Engine
    include Datify::Language

    def initialize(string = nil)
      default_language
      @array = parse_string(string)
      
    end

    def parse_string(string)
      (string.nil?) ? [] : string.split('-') 
    end

    def valid?
      (@array.size == 3)
    end
  end
end
