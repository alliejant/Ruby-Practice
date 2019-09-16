class Code
  attr_accessor :pegs

  POSSIBLE_PEGS = {
    "R" => :red,
    "G" => :green,
    "B" => :blue,
    "Y" => :yellow
  }

  def self.valid_pegs?(chars)
    chars.all? {|char| POSSIBLE_PEGS.include?(char.upcase)}
  end

  def initialize(chars)
    raise "pegs are not valid" unless Code.valid_pegs?(chars)

    @pegs = chars.map(&:upcase)
  end

  def self.random(length)
    pegs = Array.new(length) { Code::POSSIBLE_PEGS.keys.sample }
    Code.new(pegs)
  end

  def self.from_string(string)
    Code.new(string.split(""))
  end

  def [](index)
    @pegs[index]
  end

  def length
    @pegs.length
  end

  def num_exact_matches(guess)
    guess.pegs.each.with_index.count {|peg, index| peg == @pegs[index]}
  end

  def num_near_matches(guess)
    guess.pegs.each.with_index.count {|peg, index| peg != @pegs[index] && @pegs.include?(peg)}
  end

  def ==(guess)
    self.pegs.eql?(guess.pegs)
  end
end
