class BaseController
  attr_reader :table
  
  def initialize(table)
    @table = table
  end

end