#write your code here

def add n1, n2
  n1 + n2
end

def subtract n1, n2
  n1 - n2
end

def sum array
  sum = 0
  array.length.times do |i|
    sum = sum + array[i]
  end
  sum
end 
