require 'bottle_counter'

RSpec.describe BottleCounter do

  it 'Returns 98 bottles of beer' do
    bottle_counter = BottleCounter.new
    expect(bottle_counter.count_beers(99)).to eq("99 bottles of beer on the wall, 99 bottles of beer. Take one down and pass it around, 98 bottles of beer on the wall")
  end

  it 'Returns 97 bottles of beer' do
    bottle_counter = BottleCounter.new
    expect(bottle_counter.count_beers(98)).to eq("98 bottles of beer on the wall, 98 bottles of beer. Take one down and pass it around, 97 bottles of beer on the wall")
  end

  it 'Returns 96 bottles of beer' do
    bottle_counter = BottleCounter.new
    expect(bottle_counter.count_beers(97)).to eq("97 bottles of beer on the wall, 97 bottles of beer. Take one down and pass it around, 96 bottles of beer on the wall")
  end

  it "Returns 1 bottle of beer" do
    bottle_counter = BottleCounter.new
    expect(bottle_counter.count_beers(1)).to eq("1 bottle of beer on the wall, 1 bottle of beer. Take one down and pass it around, no more bottles of beer on the wall.")
  end

end
