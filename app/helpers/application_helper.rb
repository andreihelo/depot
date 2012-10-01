module ApplicationHelper

  def date_loaded
    return Time.now
  end

  def currency_euro(item)
    number_to_currency(item, :unit => "&euro;", :separator => ",", :delimiter => "", :format => "%n %u")
  end

end
