require 'datify/language'

module Datify
  class Engine
    include Datify::Language

    def initialize(string = nil)
      default

    end
  end
end