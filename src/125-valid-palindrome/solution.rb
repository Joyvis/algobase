# @param {String} s
# @return {Boolean}
def is_palindrome(s)
  s = s.downcase.gsub(/[^a-z0-9]/, '') 
  n = s.length - 1
  s.each_char.with_index { return false if _1 != s[n - _2] }

  true
end