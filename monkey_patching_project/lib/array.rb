# Monkey-Patch Ruby's existing Array class to add your own custom methods
class Array
    def span
      return nil if self.empty?
      self.max - self.min
    end
  
    def average
      return nil if self.empty?
      self.sum / self.length.to_f
    end
  
    def median
      return nil if self.empty?
      mid = self.length / 2
      sorted = self.sort
      self.length.odd? ? sorted[mid] : (sorted[mid - 1] + sorted[mid]) / 2.0
    end
  
    def counts
      count_hash = Hash.new(0)
      self.each { |ele| count_hash[ele] += 1 }
      count_hash
    end
  
    def my_count(item)
      counter = 0
      self.each { |ele| counter += 1 if ele == item }
      counter
    end
  
    def my_index(val)
      self.each_with_index { |ele, i| return i if ele == val }
      nil
    end
  
    def my_uniq
      seen = Set.new
      self.select do |el| 
        if !seen.include?(el)
            seen.add(el)
            true
        else
            false
        end
      end
    end
  
    def my_transpose
      transposed = Array.new(self.length) {Array.new}
      (0...self.length).each do |row|
        (0...self[row].length).each do |column|
            transposed[column] << self[row][column]
        end
      end
      transposed
    end
  end
  