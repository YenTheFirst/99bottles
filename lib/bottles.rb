class Bottles
  def num_bottles(num)
    (num > 0 ? num.to_s : 'no more') + ' ' + (num == 1 ? "bottle" : "bottles")
  end

  def verse(num)
    "#{num_bottles(num)} of beer on the wall, #{num_bottles(num)} of beer.\n" +\
    "Take #{num == 1 ? 'it' : 'one'} down and pass it around, #{num_bottles(num-1)} of beer on the wall.\n"
  end
end
