class BottleCounter

  def initialize(output = $stdout)
    @output = output
  end

  def count_beers(beer_amount)
    until beer_amount < 0
      if beer_amount > 1
        subtract_one(beer_amount)
      elsif beer_amount == 1
        one_bottle(beer_amount)
      else
        no_more_bottles(beer_amount)
      end
      beer_amount -= 1
    end
  end

  private

  def subtract_one(beer_amount)
    @output.puts "#{beer_amount} bottles of beer on the wall, #{beer_amount} bottles of beer. Take one down and pass it around, #{beer_amount - 1} bottles of beer on the wall"
  end

  def one_bottle(beer_amount)
    @output.puts "1 bottle of beer on the wall, 1 bottle of beer. Take one down and pass it around, no more bottles of beer on the wall."
  end

  def no_more_bottles(beer_amount)
    @output.puts "no more bottles of beer on the wall, no more bottles of beer. Go to the store and buy some more, 99 bottles of beer on the wall."
  end

end
