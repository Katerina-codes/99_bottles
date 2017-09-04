class BottleCounter

  def initialize(output = $stdout)
    @output = output
  end

  def count_beers(beer_amount)
    if beer_amount == 1
      "1 bottle of beer on the wall, 1 bottle of beer. Take one down and pass it around, no more bottles of beer on the wall."
    elsif beer_amount == 0
      "no more bottles of beer on the wall, no more  bottles of beer. Go to the store and buy some more, 99 bottles of beer on the wall."
    else
      until beer_amount == 1
        @output.puts "#{beer_amount} bottles of beer on the wall, #{beer_amount} bottles of beer. Take one down and pass it around, #{beer_amount - 1} bottles of beer on the wall"
        beer_amount -= 1
      end
    end
  end

end
