class Application

  t = Time.now

  def time
    if t.min < 10
      time_now = "#{t.hour}:0#{t.min}"
    else
      time_now = "#{t.hour}:#{t.min}"
    end
    "The time is now #{time_now}"
  end

  def call(env)
    resp = Rack::Response.new

    if t.hour < 12
      resp.write "Good Morning! #{time}"
    else
      resp.write "Good Afternoon! #{time}"
    end

    resp.finish
  end


end
