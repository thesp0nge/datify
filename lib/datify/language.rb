module Datify
  module Language
    attr_reader :lang

    def default_language
      @lang = 'it'
    end

    def set_language(locale)
      @lang = locale
    end

    
  end
end
