# @param {String} s
# @return {Integer}
def longest_palindrome(s)
  pairs = s.chars.tally.values.sum { _1 / 2 * 2 }
  pairs + ( s.length > pairs ? 1 : 0 )
end
