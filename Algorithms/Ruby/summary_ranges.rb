# Given a sorted integer array without duplicates, return the summary of its ranges.#
# example: [0,1,2,4,5,7], return ["0->2","4->5","7"].
#
# @param {Integer[]} numbers
# @return {String[]}

def summary_ranges(numbers)
  ranges        = []
  last_number   = numbers.shift
  current_range = [last_number]

  (0..numbers.length).each do |index|
    if last_number + 1 == numbers[index]
      current_range << numbers[index]
    elsif current_range.length == 1
      ranges       += current_range
      current_range = [numbers[index]]
    else
      ranges << "#{current_range.first}->#{current_range.last}"
      current_range = [numbers[index]]
    end
    last_number = numbers[index]
  end
  ranges
end
