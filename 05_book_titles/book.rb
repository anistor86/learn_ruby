class Book
# write your code here
  attr_reader :title

  def title=(text)
    @title = text

    small_words = %w[on the and if over for in of a an]
    array_title = text.split(' ').map.with_index do |w, i|
      unless (small_words.include? w) and (i > 0)
        w.capitalize
      else
        w
      end
    end
    @title = array_title.join(' ')

  end


end
