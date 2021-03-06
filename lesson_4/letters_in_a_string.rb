#loop do version

def letters_in_a_string(string,letter)
  string = string.to_s.downcase
  letters = string.chars
  my_letters = {}
  counter = 0
  loop do
    if letters[counter] == letter && my_letters[letter].nil?
      my_letters[letter] = 1
    elsif letters[counter] == letter && my_letters[letter] != nil
      my_letters[letter] = my_letters[letter] + 1
    end
    counter += 1
    break if counter == string.size
    
  end
  puts "There are #{my_letters[letter]} #{letter}'s in the string."
end

#.map version

def letters(string,letter)
  count = 0
  string = string.chars
  string.map{|character| count += 1 if character == letter}
  puts "There are #{count} #{letter}'s in the string."
end

x="Traditionally, a text is understood to be a piece of written or spoken material in its \n primary form (as opposed to a paraphrase or summary). A text is any stretch of \n language that can be understood in context. It may be as simple as 1-2 words (such as \n a stop sign) or as complex as a novel. Any sequence of sentences that belong together \n can be considered a text. you would be referring to the words in the book, not the \n physical book itself. Information related to a text, and often printed alongside it—such \n as an author's name, the publisher, the date of publication, etc.—is known as \n paratext. The idea of what constitutes a text has evolved over time. In recent years, \n the dynamics of technology—especially social media—have expanded the notion of the text \n to include symbols such as emoticons and emojis. A sociologist studying teenage \n communication, for example, might refer to texts that combine traditional language and \n graphic symbols."


letters_in_a_string(x,"h")
letters_in_a_string(x," ")
letters_in_a_string(x,"r")
letters_in_a_string(x,2)

letters(x,"a")
letters(x," ")
letters(x,"h")
letters(x,2)
