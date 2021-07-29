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
end
