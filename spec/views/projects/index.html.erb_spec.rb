require 'rails_helper'

RSpec.describe "projects/index", type: :view do
  before(:each) do
    assign(:projects, [
      Project.create!(
        :code_name => "Code Name",
        :friendly_name => "Friendly Name",
        :user => nil,
        :project => nil
      ),
      Project.create!(
        :code_name => "Code Name",
        :friendly_name => "Friendly Name",
        :user => nil,
        :project => nil
      )
    ])
  end

  it "renders a list of projects" do
    render
    assert_select "tr>td", :text => "Code Name".to_s, :count => 2
    assert_select "tr>td", :text => "Friendly Name".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
