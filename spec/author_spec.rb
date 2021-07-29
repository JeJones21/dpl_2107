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

  describe 'Object Methods' do
    before :each do
      @jane_eyre = @charlotte_bronte.write("Jane Eyre", "October 16, 1847")
      @villette = @charlotte_bronte.write("Villette", "1853")
    end

    it "can write books" do
      expect(@jane_eyre).to be_a(Book)
      expect(@jane_eyre.class).to eq(Book)
      expect(@jane_eyre.title).to eq("Jane Eyre")
      expect(@villette).to be_a(Book)
    end
  end
end
