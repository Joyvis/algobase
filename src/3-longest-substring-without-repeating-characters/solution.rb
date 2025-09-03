# @param {String} s
# @return {Integer}
def length_of_longest_substring(s)
  char_set = Set.new
  res = l = 0
  s.chars.each_with_index do |v, r|
    while char_set.include? v
      char_set.delete(s[l])
      l += 1
    end
    char_set << v
    res = [res, r - l + 1].max
  end

  res
end
