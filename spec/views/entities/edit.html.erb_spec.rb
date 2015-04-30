require 'rails_helper'

RSpec.describe "entities/edit", type: :view do
  before(:each) do
    @entity = assign(:entity, Entity.create!(
      :project => nil,
      :code_name => "MyString",
      :label => "MyString",
      :layout_hint => "MyString",
      :field => nil
    ))
  end

  it "renders the edit entity form" do
    render

    assert_select "form[action=?][method=?]", entity_path(@entity), "post" do

      assert_select "input#entity_project_id[name=?]", "entity[project_id]"

      assert_select "input#entity_code_name[name=?]", "entity[code_name]"

      assert_select "input#entity_label[name=?]", "entity[label]"

      assert_select "input#entity_layout_hint[name=?]", "entity[layout_hint]"

      assert_select "input#entity_field_id[name=?]", "entity[field_id]"
    end
  end
end
