require 'rails_helper'

RSpec.describe "fields/index", type: :view do
  before(:each) do
    assign(:fields, [
      Field.create!(
        :code_name => "Code Name",
        :label => "Label",
        :entity => nil,
        :field_type => "Field Type",
        :required => false,
        :min => "Min",
        :max => "Max",
        :ui_hint => "Ui Hint"
      ),
      Field.create!(
        :code_name => "Code Name",
        :label => "Label",
        :entity => nil,
        :field_type => "Field Type",
        :required => false,
        :min => "Min",
        :max => "Max",
        :ui_hint => "Ui Hint"
      )
    ])
  end

  it "renders a list of fields" do
    render
    assert_select "tr>td", :text => "Code Name".to_s, :count => 2
    assert_select "tr>td", :text => "Label".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Field Type".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "Min".to_s, :count => 2
    assert_select "tr>td", :text => "Max".to_s, :count => 2
    assert_select "tr>td", :text => "Ui Hint".to_s, :count => 2
  end
end
