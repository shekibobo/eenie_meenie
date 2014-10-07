require 'eenie_meenie'

describe "#eenie_meenie" do
  it "picks an item from an array" do
    a = %w(steven josh maria andrew erin)
    expect(a.eenie_meenie).to eq "steven"
  end

  it "picks an item from an array" do
    a = [1, 2, 3]
    expect(a.eenie_meenie).to eq 1
  end

  it "does the mother step" do
    a = [1, 2, 3, 4]
    expect(a.eenie_meenie(picker: :my_mother)).to eq 2
  end

  it "does the mother step for exclusion" do
    a = %w(steven josh maria andrew erin)
    expect(a.eenie_meenie(picker: :my_mother, exclusion: true)).to eq "josh"
  end
end
