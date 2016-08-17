require_relative "../test_helper"

class UserCanCreeateANewTask < FeatureTest

  def test_a_user_can_create_a_new_task
    visit '/'
    click_link('New Task')
    assert_equal "/tasks/new", current_path
    fill_in('task[title]', :with => 'Task The Thing')
    fill_in('task[description]', :with => 'Descrition The Thing')
    click_on('Submit')
    assert_equal "/tasks", current_path
    assert page.has_content?("Task The Thing")
    save_and_open_page
  end

end
