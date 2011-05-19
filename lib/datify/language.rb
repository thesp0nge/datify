module Datify
  module Language
    attr_reader :lang

    def default
      @lang = 'it'
    end

    def set(locale)
      @lang = locale
    end

    
  end
end
