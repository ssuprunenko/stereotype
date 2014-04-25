silence_warnings do
  require 'pry'
  IRB = Pry
end

class Zeus::Rails
  def console
    Pry.start
  end
end