# @param {String} s
# @return {Boolean}
def is_valid(s)
  openers = { '(' => ')', '{' => '}', '[' => ']' }
  stack = []
  s.chars.each do
    if openers.key?(_1)
      stack << _1
    else
      return false unless openers[stack.pop] == _1
    end
  end

  stack.empty?
end