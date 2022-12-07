module Day01
  class << self
    def part_one(input)
      most = 0
      current = 0
      
      input.each  do |item|
        if item.empty?
          most = current.to_i if current > most
          current = 0
        else
          current += item.to_i
        end
      end
      puts most
      most
    end

    def part_two(input)
      totals = []
      current = 0
      
      input.each  do |item|
        if item.empty?
          totals.push(current.to_i)
          current = 0
        else
          current += item.to_i
        end
      end

      puts totals.sort.last(3).sum
    end
  end
end
