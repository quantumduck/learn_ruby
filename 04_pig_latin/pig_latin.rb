def translate(str)
  translate_word(str)
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
