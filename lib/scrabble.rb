class String
  define_method(:scrabble) do
    letter_scores = {"a" => 1, "e" => 1, "i" => 1, "o" => 1, "u" => 1, "l" => 1, "n" => 1, "r" => 1, "s" => 1, "t" => 1, "d" => 2, "g" => 2, "b" => 3, "c" => 3, "m" => 3, "p" => 3, "f" => 4, "h" => 4, "v" => 4, "w" => 4, "y" => 4, "k" => 5, "j" => 8, "x" => 8, "q" => 10, "z" => 10}
    word = self.downcase()
    if self.include?(" ")
      "Error: you can't do multiple words"
    elsif word[/[a-z]+/] != word
      "Error: you can't do special characters"
    else
      letter_total=0
      letters = word.split("")
      letters.length().times do |i|
        letter_total = letter_total + letter_scores[letters[i]]
      end
      letter_total
    end
  end
end
