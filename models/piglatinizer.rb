class PigLatinizer

  def initialize
  end

  def piglatinize(word)
    if word == "I"
       "Iway"
    elsif word[0].downcase.match(/[^aeiou]/) && word[1].downcase.match(/[^aeiou]/) && word[2].downcase.match(/[^aeiou]/)
      word[3..-1] + word[0..2] + "ay"
    elsif word[0].downcase.match(/[^aeiou]/) && word[1].downcase.match(/[^aeiou]/)
      word[2..-1] + word[0..1] + "ay"
    elsif word[0].downcase.match(/[^aeiou]/)
      word[1..-1] + word[0] + "ay"
    elsif word[0].downcase.match(/[aeiou]/)
      word + "way"
    else
      word[1..-1] + word[0] + "ay"
    end
  end

  def to_pig_latin(phrase)
    word_array = phrase.split(" ")
    word_array.collect! do |word|
      piglatinize(word)
    end
    word_array.join(" ")
  end

end
