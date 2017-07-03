#write your code here

def ftoc f
  f2 = f.to_f
  c = (f2 - 32)*5/9
  c
end

def ctof c
  c2 = c.to_f
  f = (c2*9)/5 + 32
  f
end
