class Hangman
  DICTIONARY = ["cat", "dog", "bootcamp", "pizza"]

  def self.random_word
    DICTIONARY.sample
  end

  def initialize
    @secret_word = Hangman.random_word
    @guess_word = Array.new(@secret_word.length, "_")
    @attempted_chars = []
    @remaining_incorrect_guesses = 5
  end

  def guess_word
    @guess_word
  end

  def remaining_incorrect_guesses
    @remaining_incorrect_guesses
  end

  def attempted_chars
    @attempted_chars
  end

  def already_attempted?(char)
    @attempted_chars.include?(char)
  end

  def get_matching_indices(char)
    (0...@secret_word.length).each.select { |index| @secret_word[index] == char }
  end

  def fill_indices(char, indices)
    indices.each {|index| @guess_word[index] = char}
  end

  def try_guess(char)
    if self.already_attempted?(char) 
      puts "that has already been attempted"
      false
    else
      @attempted_chars << char
      matching_indices = self.get_matching_indices(char)
      matching_indices.empty? ? @remaining_incorrect_guesses -= 1 : fill_indices(char, matching_indices)
      true
    end
  end

  def ask_user_for_guess
    puts "Enter a char:"
    self.try_guess(gets.chomp)
  end

  def win?
    if @guess_word.join("") == @secret_word
      puts "WIN"
      true 
    else
      false
    end
  end

  def lose?
    if @remaining_incorrect_guesses == 0
      puts "LOSE"
      true
    else
      false
    end
  end

  def game_over?
    if win? || lose?
      puts @secret_word
      true
    else
      false
    end
  end
end
