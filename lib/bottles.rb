class Bottles
  def num_bottles(num)
    (num > 0 ? num.to_s : 'no more') + ' ' + (num == 1 ? "bottle" : "bottles")
  end

  def what_you_do(num)
    case num
    when 0 then "Go to the store and buy some more"
    when 1 then "Take it down and pass it around"
    else "Take one down and pass it around"
    end
  end

  def verse(num)
    next_num = num > 0 ? num-1 : 99

    "#{num_bottles(num)} of beer on the wall, ".capitalize + \
    "#{num_bottles(num)} of beer.\n" + \
    what_you_do(num) +", "+ \
    "#{num_bottles(next_num)} of beer on the wall.\n"
  end

  def verses(high, low)
    high.downto(low).map(&self.method(:verse)).join("\n")
  end

  def song
    verses(99, 0)
  end
end
