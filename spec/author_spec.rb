require './lib/book'
require './lib/author'

RSpec.describe Author do
  before :each do
    @charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})
  end

  describe 'Object Existence' do
    it "exists" do
      expect(@charlotte_bronte).to be_a(Author)
    end

    it "has readable attributes" do
      expect(@charlotte_bronte.name).to eq("Charlotte Bronte")
      expect(@charlotte_bronte.books).to eq([])
    end
  end
end
