class Bottles
  def verse(num_of_bottles)
    bottles_left = num_of_bottles - 1

    bottles_plural = ""
    bottles_plural = "s" if num_of_bottles != 1

    bottles_left_plural = ""
    bottles_left_plural = "s" if bottles_left != 1

    if num_of_bottles == 0
      how_many_bottles = "no more"
      next_steps = "Go to the store and buy some more, "
    else
      how_many_bottles = num_of_bottles.to_s
      next_steps = "Take #{num_of_bottles > 1 ? "one" : "it"} down and pass it around, "
    end

    how_many_bottles_left =
    case bottles_left
    when 0
      "no more"
    when -Float::INFINITY..-1
      "99"
    else
      bottles_left
    end

    "#{how_many_bottles.capitalize} bottle#{bottles_plural} of beer on the wall, " +
    "#{how_many_bottles} bottle#{bottles_plural} of beer.\n" +
    next_steps +
    "#{how_many_bottles_left} bottle#{bottles_left_plural} of beer on the wall.\n"
  end

  def verses(start_num_of_bottles, end_num_of_bottles)
    start_num_of_bottles.downto(end_num_of_bottles).map {|n| verse(n) }.join("\n")
  end

  def song
    verses(99, 0)
  end
end
