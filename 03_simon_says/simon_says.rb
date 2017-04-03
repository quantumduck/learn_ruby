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
  str.capitalize
end

def test_titleize_title_case(str)
  result = str.first_word.capitalize
  str.split[1, str.split.length].each { |s| result += ' ' + s.capitalize }
  result
end
