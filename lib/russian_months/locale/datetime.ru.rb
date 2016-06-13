{
    :ru => {
        :date => {
            :abbr_day_names => lambda { |_key, options|
              if options[:format] && options[:format] =~ RussianMonths::STANDALONE_ABBR_DAY_NAMES_MATCH
                :'date.common_abbr_day_names'
              else
                :'date.standalone_abbr_day_names'
              end
            },
            :day_names => lambda { |_key, options|
              if options[:format] && options[:format] =~ RussianMonths::STANDALONE_DAY_NAMES_MATCH
                :'date.standalone_day_names'
              else
                :'date.common_day_names'
              end
            },
            :abbr_month_names => lambda { |_key, options|
              if options[:format] && options[:format] =~ RussianMonths::ABBR_MONTH_NAMES_MATCH
                :'date.common_abbr_month_names'
              else
                :'date.standalone_abbr_month_names'
              end
            },
            :month_names => lambda { |_key, options|
              if options[:format] && options[:format] =~ RussianMonths::MONTH_NAMES_MATCH
                :'date.common_month_names'
              else
                :'date.standalone_month_names'
              end
            }
        }
    }
}