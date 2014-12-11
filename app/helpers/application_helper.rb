module ApplicationHelper
  def formatted_time(time)
    time.strftime('%a, %e %B')
  end
end
