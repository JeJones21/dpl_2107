require './lib/library'
require './lib/author'

RSpec.describe Library do
  before :each do
    @dpl = Library.new("Denver Public Library")
  end

  describe 'Object Existence' do
    it "exists" do
      expect(@dpl).to be_a(Library)
    end
  end

  describe 'Object Methods' do
    it "has readable attributes" do
      expect(@dpl.name).to eq("Denver Public Library")
      expect(@dpl.books).to eq([])
      expect(@dpl.authors).to eq([])
    end
  end

  describe 'Object Methods' do
    before :each do
      @charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})
      @harper_lee = Author.new({first_name: "Harper", last_name: "Lee"})
      @jane_eyre = @charlotte_bronte.write("Jane Eyre", "October 16, 1847")
      @professor = @charlotte_bronte.write("The Professor", "1857")
      @villette = @charlotte_bronte.write("Villette", "1853")
      @mockingbird = @harper_lee.write("To Kill a Mockingbird", "July 11, 1960")

    it "adds books and authors to the library" do
      @dpl.add_author(@charlotte_bronte)
      @dpl.add_author(@harper_lee)
      expect(@dpl.authors).to eq([@charlotte_bronte, @harper_lee])
    end
  end
end
