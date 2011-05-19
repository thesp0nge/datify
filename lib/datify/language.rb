module Datify
  module Language
    attr_reader :lang

    MONTHS_IT = { 'GEN' => 1, 'FEB' => 2, 'MAR' => 3, 'APR' => 4, 'MAG' => 5, 'GIU' => 6, 'LUG' => 7, 'AGO' => 8, 'SET' => 9, 'OTT' => 10, 'NOV' => 11, 'DIC' => 12, }
    
    def default_language
      @lang = 'it'
    end

    def set_language(locale)
      @lang = locale
    end

    def get_month(m)
      MONTHS_IT[m.upcase] || m
    end
    
    
  end
end
