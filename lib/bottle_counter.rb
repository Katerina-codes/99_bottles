class BottleCounter

  def count_beers(beer_amount)
    if beer_amount == 99
      "#{beer_amount} bottles of beer on the wall, #{beer_amount} bottles of beer. Take one down and pass it around, 98 bottles of beer on the wall"
    else
      "#{beer_amount} bottles of beer on the wall, #{beer_amount} bottles of beer. Take one down and pass it around, 97 bottles of beer on the wall"
    end
  end

end
