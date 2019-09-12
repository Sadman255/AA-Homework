def range(min, max)
  return [] if min >= max
  [min].concat(range(min + 1, max))
end

p range(3, 10)