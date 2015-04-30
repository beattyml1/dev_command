require 'rails_helper'

RSpec.describe "entities/show", type: :view do
  before(:each) do
    @entity = assign(:entity, Entity.create!(
      :project => nil,
      :code_name => "Code Name",
      :label => "Label",
      :layout_hint => "Layout Hint",
      :field => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/Code Name/)
    expect(rendered).to match(/Label/)
    expect(rendered).to match(/Layout Hint/)
    expect(rendered).to match(//)
  end
end
