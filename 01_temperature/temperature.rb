#write your code here
def ftoc(x)
  return ((x - 32.0) / 1.8).round(1)
end

def ctof(x)
  return ((x * 1.8) + 32.0).round(1)
end
