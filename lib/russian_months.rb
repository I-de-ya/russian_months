module RussianMonths
  extend self

  ABBR_MONTH_NAMES_MATCH          = /(%[-\d]?d|%e)(.*)(%b)/
  MONTH_NAMES_MATCH               = /(%[-\d]?d|%e)(.*)(%B)/
  STANDALONE_ABBR_DAY_NAMES_MATCH = /^%a/
  STANDALONE_DAY_NAMES_MATCH      = /^%A/

  def init_i18n
    I18n.load_path.unshift(*locale_files)
    I18n.reload!
  end

  protected

  def locale_files
    Dir[File.join(File.dirname(__FILE__), "russian_months", "locale", "**/*")]
  end
end

RussianMonths.init_i18n