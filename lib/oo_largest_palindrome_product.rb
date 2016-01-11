# Implement your object-oriented solution here!
class LargestPalindromeProduct
  def initialize
    @a = 999        #highest number to be multiplied
    @x = 1        #outer loop counter
    @y = 0        #inner loop counter
    @largest = 0  #largest product that is a palindrome
  end

  def answer
    while @x < @a || @y < @a
      vars_x_and_y              #determine x and y
      product                   #multiply x and y
      is_largest_palindrome?    #determine new/largest palindrome
    end
    return @largest
  end

  def vars_x_and_y
    if @x > @a
      @x, @y = 0
    elsif @y >= @a
      @y = 0
      @x += 1
    end
    @y += 1
  end

  def product
    @x * @y
  end

  def is_a_palindrome?
    prod = product.to_s
    prod == prod.reverse
  end

  def is_new_largest_palindrome?
    if is_a_palindrome?
      product > @largest ? @largest = product : nil
      return true
    end
  end

  def is_largest_palindrome?
    if is_new_largest_palindrome? && loop_complete?
      @largest_palindrome_found = true
    end
  end

  def loop_complete?
    @x == @a && @y == @a
  end
end