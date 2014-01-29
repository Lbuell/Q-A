
def merge_sort(a)
  return a if a.size <= 1
  l, r = split(a)
  result = join(merge_sort(l), merge_sort(r))
end

def split a
  mid = (a.size / 2).round
  [a.take(mid), a.drop(mid)]
end

def join a, b
  return b.empty? ? a : b if a.empty? || b.empty?
  smallest = a.first <= b.first ? a.shift : b.shift
  join(a, b).unshift(smallest)
end

a = [6,23,53,1,2,5,62,61,33,21,14,6,23].shuffle
p merge_sort(a)

