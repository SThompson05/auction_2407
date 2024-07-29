require './lib/item'
require './lib/auction'
require './lib/attendee'

RSpec.configure do 
    |config|config.formatter = :documentation 
end

RSpec.describe Auction do
    it 'has a name' do
        auction = Auction.new

        expect(auction.items).to eq([])
    end

    it 'has a name' do
        auction = Auction.new
        item1 = Item.new('Chalkware Piggy Bank')
        item2 = Item.new('Bamboo Picture Frame')

        auction.add_item(item1)
        auction.add_item(item2)

        expect(auction.items).to eq([item1, item2])
    end
end