require 'rails_helper'

RSpec.describe "projects/show", type: :view do
  before(:each) do
    @project = assign(:project, Project.create!(
      :code_name => "Code Name",
      :friendly_name => "Friendly Name",
      :user => nil,
      :project => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Code Name/)
    expect(rendered).to match(/Friendly Name/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
