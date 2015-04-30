require 'rails_helper'

RSpec.describe "entities/index", type: :view do
  before(:each) do
    assign(:entities, [
      Entity.create!(
        :project => nil,
        :code_name => "Code Name",
        :label => "Label",
        :layout_hint => "Layout Hint",
        :field => nil
      ),
      Entity.create!(
        :project => nil,
        :code_name => "Code Name",
        :label => "Label",
        :layout_hint => "Layout Hint",
        :field => nil
      )
    ])
  end

  it "renders a list of entities" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Code Name".to_s, :count => 2
    assert_select "tr>td", :text => "Label".to_s, :count => 2
    assert_select "tr>td", :text => "Layout Hint".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
