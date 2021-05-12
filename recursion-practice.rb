def collatz(n, steps=0)
  if n === 1
    return steps
  elsif n % 2 === 0
    steps += 1
    collatz(n / 2, steps)
  elsif n % 2 != 0
    steps += 1
    collatz(3 * n + 1, steps)
  end
end

puts "collatz conjecture of 7 is #{collatz(7)}"

def factorial(n)
  if n == 0
    1
  else
    n * factorial(n - 1)
  end
end

puts ""
puts "The factorial of 5 is #{factorial(5)}"

def palindrome(string)
  if string.length == 1 || string.length == 0
    true
  else
    if string[0] == string[-1]
      palindrome(string[1..-2])
    else
      false
    end
  end
end

puts ""
puts "Is racecar a palindrome? #{palindrome("racecar")}"

def beer(n)
  if n == 0
    puts "No more bottles of beer!"
  else
    puts "#{n} bottles of beer on the wall"
    beer(n - 1)
  end
end

puts ""
puts "Recursive beer on the wall song"
beer(3)

def fibo_position(n, array=[0, 1])
  if n == 0
    array[-2]
  else
    array << array[-2] + array[-1]
    fibo_position(n - 1, array)
  end
end
puts ""
puts "The fibonacci number on index 4 is #{fibo_position(4)}"

def flatten(arr)
  return arr if arr == []

  elem = arr.shift

  if elem.is_a? Array
    return flatten(elem) + flatten(arr)
  else
    [elem] + flatten(arr)
  end
end

bumpy_ary = [[1, 2], [3, 4]] 
puts ""
puts "Flattened bumpy array #{bumpy_ary} to ---> #{flatten(bumpy_ary)}"

# fibonacci iteration
def fibs(n)
  fib_ary = [0, 1]

  n.times do
    fib_ary << fib_ary[-2] + fib_ary[-1]
  end

  fib_ary
end

# puts fibs(10)

def fib_rec(n, ary=[0, 1])
  if n == 0
    ary
  else
    fib_rec(n - 1, ary + [ary[-2] + ary[-1]])
  end
end

puts ""
puts "First 10 fibonacci numbers #{fib_rec(10)}"

def merge_sort(arr)
  if arr.size < 2
    arr
  else
    mid = arr.size/2
    a = merge_sort(arr[0...mid])
    b = merge_sort(arr[mid..-1])
    sorted = []

    while [a, b].none?(&:empty?)
      sorted << (a[0] < b[0] ? a.shift : b.shift)
    end
    
    sorted + a + b
  end
end

numbers = [9, 3, 5, 10, 6, 2, 8, 4, 1, 7]

puts ""
puts "Array after recursive merge sort: #{merge_sort(numbers)}"