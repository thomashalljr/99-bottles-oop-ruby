class Bottles
  def verse(num_of_bottles)
    "#{num_of_bottles == 0 ? "No more" : num_of_bottles} bottle#{"s" if num_of_bottles > 1 or num_of_bottles == 0} of beer on the wall, " +
    "#{num_of_bottles == 0 ? "no more" : num_of_bottles} bottle#{"s" if num_of_bottles > 1 or num_of_bottles == 0} of beer.\n" +
    "#{num_of_bottles == 0 ? "Go to the store and buy some more, " : "Take #{num_of_bottles-1 == 0 ? "it" : "one"} down and pass it around, "}" +
    "#{if num_of_bottles-1 == 0; "no more" elsif num_of_bottles-1 < 0; "99" else num_of_bottles-1 end;} bottle#{"s" if num_of_bottles-1 > 1 or num_of_bottles-1 == 0 or num_of_bottles-1 < 0} of beer on the wall.\n"
  end
end
