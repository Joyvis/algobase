  stack = []
  tokens.each do
    unless ['*', '-', '+', '/'].include? _1
      stack.push(_1.to_i)
      next
    end
    i, j = stack.pop 2
    stack.push(_1 == '/' ? (i.to_f / j).truncate : i.send(_1, j))
  end

  stack.first
