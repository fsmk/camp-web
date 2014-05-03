module ArticlesHelper

  def get_day(date)
    date.split("-").last
  end

end
