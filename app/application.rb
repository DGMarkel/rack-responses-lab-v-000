class Application
  attr_accessor :t_statement

  def call(env)
    resp = Rack::Response.new

    if t.hour < 12
      resp.write "Good Morning! #{t_statement}"
    else
      resp.write "Good Afternoon! #{t_statement}"
    end

    resp.finish
  end

end
