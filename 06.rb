require "pry"
require 'minitest/autorun'

class MagicBallTest < Minitest::Test
  def test_one
    result = Day06.part_one(["nznrnfrfntjfmvfwmzdfjlvtqnbhcprsg"])
    assert_equal 10, result
  end

  def test_two
  end
end


module Day06
  class << self
    def part_one(input)
      input = input[0]
      res = nil
      input.split('').each_with_index do |char, i|
        if input.slice(i, 4).split('').uniq.length == 4
          res = i+4 if res.nil?
        end
      end
      res
    end

    def part_two(input)
      input = input[0]
      res = nil
      input.split('').each_with_index do |char, i|
        if input.slice(i, 14).split('').uniq.length == 14
          res = i+14 if res.nil?
        end
      end
      res
    end
  end
end
