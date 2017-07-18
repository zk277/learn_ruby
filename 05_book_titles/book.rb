class Book
# write your code here
  attr_accessor :title

  def title
    @title = titleize(@title)
  end

  private
  def titleize string
      array = string.split
      c_array = []
      count = 1
      array.each do |word|
          if (count == 1)
              c_array.push word.capitalize
          elsif ((word != 'the') and (word != 'a') and (word != 'an') and (word != 'and') and (word != 'in') and (word != 'of'))
              c_array.push word.capitalize
          else
              c_array.push word
          end
          count = count + 1
      end
      result = c_array.join(' ')
      result
  end



end

#@book = Book.new
#@book.title "inferno"
