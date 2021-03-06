require 'rails_helper'

RSpec.describe "fields/edit", type: :view do
  before(:each) do
    @field = assign(:field, Field.create!(
      :code_name => "MyString",
      :label => "MyString",
      :entity => nil,
      :field_type => "MyString",
      :required => false,
      :min => "MyString",
      :max => "MyString",
      :ui_hint => "MyString"
    ))
  end

  it "renders the edit field form" do
    render

    assert_select "form[action=?][method=?]", field_path(@field), "post" do

      assert_select "input#field_code_name[name=?]", "field[code_name]"

      assert_select "input#field_label[name=?]", "field[label]"

      assert_select "input#field_entity_id[name=?]", "field[entity_id]"

      assert_select "input#field_field_type[name=?]", "field[field_type]"

      assert_select "input#field_required[name=?]", "field[required]"

      assert_select "input#field_min[name=?]", "field[min]"

      assert_select "input#field_max[name=?]", "field[max]"

      assert_select "input#field_ui_hint[name=?]", "field[ui_hint]"
    end
  end
end
