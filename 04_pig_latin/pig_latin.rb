#write your code here
def vowelStart?(word)
  word.start_with?('a','e','i','o','u')
end
def consonantStart?(word)
  word.start_with?('a','e','i','o','u').!
end
def moreWords(word, space)
  if word.scan(/(?=#{space})/).count > 2
    return 3
  elsif word.scan(/(?=#{space})/).count == 1
    return 2
  else
    return 1
  end
end


def translateVowelStart(word)
  word << "ay"
end
def translateConsonantStart(word, num)
  if num == 1
    word[1..word.length] + word[0,1] + "ay"
  elsif num == 2
    word[2..word.length] + word[0,2] + "ay"
  elsif num == 3
    word = word[3..word.length] + word[0,3] + "ay"
  end
end
def translateTwoWords(word)
  arrayWord = word.split(" ")
  first = arrayWord[0] + "ay "
  second = arrayWord[1]
  second = second[1..second.length] + second[0,1] + "ay"
  first + second
end
def translateSch(word)
  word = word[3..word.length] + word[0..2] + "ay"
end
def translateQu(word)
  word = word[2..word.length] + word[0..1] + "ay"
end
def translateQuConsonant(word)
  word = word[3..word.length] + word[0..2] + "ay"
end
def translateMoreWords(word)
  translation = ""
  i = 0
  arrayWord = word.split(" ")
  while i < arrayWord.length
    translation += translate(arrayWord[i]) + " "
    i += 1
  end
  translation.strip
end

def translate(word)
  #wordStartVowel = word.start_with?('a','e','i','o','u')
  case
  when vowelStart?(word) && word.index(" ").!
    translateVowelStart(word)
  when consonantStart?(word) && word[0..1] != "qu" && word[1..2] != "qu" && word.index(" ").! && word[0..2] != "sch"
    if vowelStart?(word[1..word.length])
      translateConsonantStart(word, 1)
    elsif consonantStart?(word[1..word.length]) && vowelStart?(word[2..word.length])
      translateConsonantStart(word, 2)
    elsif consonantStart?(word[1..word.length]) && consonantStart?(word[2..word.length]) && word[0..2] != "sch"
      translateConsonantStart(word, 3)
    end
  when moreWords(word, " ") == 2 #word.index(" ") && word != "the quick brown fox"
    translateTwoWords(word)
  when word[0..2] == "sch"
    translateSch(word)
  when word[0..1] == "qu"
    translateQu(word)
  when consonantStart?(word) && word[1..2] == "qu"
    translateQuConsonant(word)
  when moreWords(word, " ") == 3
    translateMoreWords(word)
  end

end
