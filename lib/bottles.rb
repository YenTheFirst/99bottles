class Bottles
  def verse(num)
    num_bottles = "#{num} bottle#{'s' if num > 1}"
    fewer_bottles = "#{num-1} bottle#{'s' if (num-1) > 1}"
    "#{num_bottles} of beer on the wall, #{num_bottles} of beer.\n" +\
    "Take one down and pass it around, #{fewer_bottles} of beer on the wall.\n"
  end
end
