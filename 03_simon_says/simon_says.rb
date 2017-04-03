def echo(str)
  str.to_s
end

def shout(str)
  echo(str).upcase
end

def repeat(str, times = 2)
  result = str
  times -= 1
  times.times { result += ' ' + str }
  result
end

def start_of_word(str, n)
  str.to_s[0, n]
end
