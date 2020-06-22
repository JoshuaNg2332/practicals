require 'remembering_names'

describe "add_names" do
  it 'Adds the name' do
    expect(add_names(josh)).to eq "Names Stored!"
  end
end

describe "show_names" do
  it 'Shows the names stored' do
    expect(show_names).to eq show_names
  end
end