require_relative "../test_helper"

class TaskTest < Minitest::Test

  def test_assigns_attributes_correctly
    task = Task.new({"title" => "Test Title", "id" => 1, "description" => "Test description"})

    assert_equal "Test Title", task.title
    assert_equal 1, task.id
    assert_equal "Test description", task.description
  end

end
