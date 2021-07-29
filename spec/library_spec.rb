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
end
