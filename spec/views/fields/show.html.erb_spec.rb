require 'rails_helper'

RSpec.describe "fields/show", type: :view do
  before(:each) do
    @field = assign(:field, Field.create!(
      :code_name => "Code Name",
      :label => "Label",
      :entity => nil,
      :field_type => "Field Type",
      :required => false,
      :min => "Min",
      :max => "Max",
      :ui_hint => "Ui Hint"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Code Name/)
    expect(rendered).to match(/Label/)
    expect(rendered).to match(//)
    expect(rendered).to match(/Field Type/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/Min/)
    expect(rendered).to match(/Max/)
    expect(rendered).to match(/Ui Hint/)
  end
end
