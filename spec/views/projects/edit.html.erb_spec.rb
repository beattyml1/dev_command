require 'rails_helper'

RSpec.describe "projects/edit", type: :view do
  before(:each) do
    @project = assign(:project, Project.create!(
      :code_name => "MyString",
      :friendly_name => "MyString",
      :user => nil,
      :project => nil
    ))
  end

  it "renders the edit project form" do
    render

    assert_select "form[action=?][method=?]", project_path(@project), "post" do

      assert_select "input#project_code_name[name=?]", "project[code_name]"

      assert_select "input#project_friendly_name[name=?]", "project[friendly_name]"

      assert_select "input#project_user_id[name=?]", "project[user_id]"

      assert_select "input#project_project_id[name=?]", "project[project_id]"
    end
  end
end
