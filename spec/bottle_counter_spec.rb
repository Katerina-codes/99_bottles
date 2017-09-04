require 'bottle_counter'

RSpec.describe BottleCounter do
    
  it 'Returns 99 bottles of beer' do
    bottle_counter = BottleCounter.new 
    expect(bottle_counter.count_beers(99)).to eq("99 bottles of beer on the wall, 99 bottles of beer. Take one down and pass it around, 98 bottles of beer on the wall")
  end
end
