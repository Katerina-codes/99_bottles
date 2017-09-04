class BottleCounter

  def count_beers(beer_amount)
    if beer_amount > 1
      "#{beer_amount} bottles of beer on the wall, #{beer_amount} bottles of beer. Take one down and pass it around, #{beer_amount - 1} bottles of beer on the wall"
    else
      "1 bottle of beer on the wall, 1 bottle of beer. Take one down and pass it around, no more bottles of beer on the wall."
    end
  end

end
