module ApplicationHelper

  def last_visit
    if cookies[:the_time]
      diff = (Time.now.to_i - cookies[:the_time].to_i)  # calc seconds since last visit
      diff = diff/(24*60*60)                            # convert to days
      tmp = Time.at(cookies[:the_time].to_i).strftime("%B %e, %Y at %I:%M %p")
      if diff < 120
        render(:text => "The last time you visited was #{tmp}")
      else
        render(:text => "Your last visit was too long ago #{tmp}" )
      end
    else
      #render(:text => "Welcome!" )
    end
  end

end
