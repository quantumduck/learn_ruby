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

def first_word(str)
  str.split.first
end

def titleize(str)
  result = str.split.first.capitalize
  while (str.split.length >= 2)
    str = str.split(nil, 2)[1]
    case first_word(str)
    when 'the'
      result += ' ' + str.split.first
    when 'to'
      result += ' ' + str.split.first
    when 'a'
      result += ' ' + str.split.first
    when 'over'
      result += ' ' + str.split.first
    when 'from'
      result += ' ' + str.split.first
    when 'is'
      result += ' ' + str.split.first
    when 'and'
      result += ' ' + str.split.first
    else
      result += ' ' + str.split.first.capitalize
    end
  end
  result
end
