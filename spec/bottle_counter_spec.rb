require 'bottle_counter'

RSpec.describe BottleCounter do

  let(:output) { StringIO.new }
  let(:bottle_counter) { BottleCounter.new(output) }

  it 'Returns 98 bottles of beer' do
    bottle_counter.count_beers(99)
    expect(output.string).to include("99 bottles of beer on the wall, 99 bottles of beer. Take one down and pass it around, 98 bottles of beer on the wall")
  end

  it 'Returns 97 bottles of beer' do
    bottle_counter.count_beers(98)
    expect(output.string).to include("98 bottles of beer on the wall, 98 bottles of beer. Take one down and pass it around, 97 bottles of beer on the wall")
  end

  it 'Returns 96 bottles of beer' do
    bottle_counter.count_beers(97)
    expect(output.string).to include ("97 bottles of beer on the wall, 97 bottles of beer. Take one down and pass it around, 96 bottles of beer on the wall")
  end

  it "Returns 1 bottle of beer" do
    bottle_counter.count_beers(1)
    expect(output.string).to include("1 bottle of beer on the wall, 1 bottle of beer. Take one down and pass it around, no more bottles of beer on the wall.")
  end

  it "returns no more bottle of beer" do
    bottle_counter.count_beers(0)
    expect(output.string).to include("no more bottles of beer on the wall, no more bottles of beer. Go to the store and buy some more, 99 bottles of beer on the wall.")
  end

end
