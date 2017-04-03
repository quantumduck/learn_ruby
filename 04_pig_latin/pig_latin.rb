def translate(str)
  result = ""
  str.split.each { |w| result += translate_word(w) + ' ' }
  result = result[0, (result.length - 1)]
end

def translate_word(str)
  vowels = ['a', 'e', 'i', 'o', 'u']

  while !vowels.include?(str[0])
    if (str[0, 2] == 'qu')
      str = str[2, (str.length - 1)] + "qu"
    else
      str = str[1, (str.length - 1)] + str[0]
    end
  end
  str += "ay"
end
