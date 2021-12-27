class Bottles
  def verse(num_of_bottles)
    case num_of_bottles
    when 0
      "No more bottles of beer on the wall, " +
      "no more bottles of beer.\n" +
      "Go to the store and buy some more, " +
      "99 bottles of beer on the wall.\n"
    when 1
      "#{num_of_bottles} bottle of beer on the wall, " +
      "#{num_of_bottles} bottle of beer.\n" +
      "Take it down and pass it around, " +
      "no more bottles of beer on the wall.\n"
    else
      "#{num_of_bottles} bottles of beer on the wall, " +
      "#{num_of_bottles} bottles of beer.\n" +
      "Take one down and pass it around, " +
      "#{num_of_bottles - 1} bottle#{"s" if num_of_bottles - 1 != 1} of beer on the wall.\n"
    end
  end

  def verses(start_num_of_bottles, end_num_of_bottles)
    start_num_of_bottles.downto(end_num_of_bottles).map {|n| verse(n) }.join("\n")
  end

  def song
    verses(99, 0)
  end
end
