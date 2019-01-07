class Scrabble

  def initialize(input_word)
    @input_word = input_word
  end

  def score
    word_score = 0

    letter_values = {
        " " => 0, "A" => 1, "E" => 1, "I" => 1, "O" => 1, "N" => 1,
        "R" => 1, "T" => 1, "L" => 1, "S" => 1, "U" => 1, "D" => 2, "G" => 2,
        "B" => 3, "C" => 3, "M" => 3, "P" => 3, "F" => 4, "H" => 4, "V" => 4,
        "W" => 4, "Y" => 4, "K" => 5, "J" => 8, "X" => 8, "Q" => 10, "Z" => 10
      }

      if @input_word == nil
        return 0
      elsif @input_word == " \t\n"
        return 0
      elsif @input_word == ""
        return 0
      else
        word_array = @input_word.upcase.split("")
        word_array.each do |letter|
          word_score += letter_values[letter]
      end
      word_score
    end
  end
end
