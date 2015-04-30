require 'rails_helper'

RSpec.describe "projects/new", type: :view do
  before(:each) do
    assign(:project, Project.new(
      :code_name => "MyString",
      :friendly_name => "MyString",
      :user => nil,
      :project => nil
    ))
  end

  it "renders new project form" do
    render

    assert_select "form[action=?][method=?]", projects_path, "post" do

      assert_select "input#project_code_name[name=?]", "project[code_name]"

      assert_select "input#project_friendly_name[name=?]", "project[friendly_name]"

      assert_select "input#project_user_id[name=?]", "project[user_id]"

      assert_select "input#project_project_id[name=?]", "project[project_id]"
    end
  end
end
