# iterative version
def fibs(num)
  return nil if num < 0

  sequence = [0]
  index = 0
  elem = 1

  until index == num do
    sequence << elem
    elem = sequence[-1] + sequence[-2]
    index += 1
  end

  sequence
end

# recursive version
def fibs_rec(num)
  sequence = []

  if num == 0
    sequence << 0
  elsif num == 1
    sequence = [0, 1]
  else
    sequence = fibs_rec(num - 1)
    sequence << sequence[-1] + sequence[-2]
  end
end


# sample run for iterative fibs
p fibs(2)
p fibs(3)
p fibs(4)
p fibs(5)
p fibs(6)

# sample run for recursive fibs
p fibs_rec(2)
p fibs_rec(3)
p fibs_rec(4)
p fibs_rec(5)
p fibs_rec(6)
