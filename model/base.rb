class Base
  attr_accessor :dateModified
  attr_reader :id, :dateCreated

  def initialize
    @id = 0
    @dateCreated = Time.now
    @dateModified = Time.now
  end

  def initialize(dateCreated, dateModified, id)
    @id = id
    @dateCreated = dateCreated
    @dateModified = dateModified
  end
end