#write your code here
def echo(expression)
  expression
end

def shout(expression)
  expression.upcase
end

def repeat(expression,*arr)
  if arr != []
    expression = ((expression + ' ') * arr[0]).strip!
  else
    expression + ' ' + expression
  end
end

def start_of_word(expression, count)
  expression[0, count]
end

def first_word(expression)
  expression.split(" ").first

end

def titleize(expression)
  small_words = %w[on the and if over for]
  expression.split(' ').map.with_index do |w, i|
    unless (small_words.include? w) and (i > 0)
      w.capitalize
    else
      w
    end
  end.join(' ')
end
