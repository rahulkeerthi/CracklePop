## Write a program that prints out the numbers 1 to 100 (inclusive). If the number is divisible by 3, print Crackle instead of the number. If it's divisible by 5, print Pop. If it's divisible by both 3 and 5, print CracklePop. You can use any language.

def cracklepop(min, max)
  (min..max).map do |num| 
    if num % 3 == 0 || num % 5 == 0
      puts [["Crackle"][num % 3],["Pop"][num % 5]].join
    else
      puts num
    end
  end
end

cracklepop(1,100)