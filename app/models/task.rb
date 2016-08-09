class Task
  attr_reader :id, :description, :title

  def initialize(data)
    @id = data["id"]
    @description = data["description"]
    @title = data["title"]
  end

end
