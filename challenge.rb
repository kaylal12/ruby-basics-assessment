# Assessment :: Ruby Basics


# Question 1: Ruby objects and classes.
# How would one find the class of the below objects.

"Hello World"
33
65.89

You can use the .class method, or if you want to know whether an object is from a specific class, you can use .is_a? or .kind_of? followed by the class name, and it will return true or false.

# Question 2: Booleans
# What would be the result of executing the below statements

if 33 && 55
  puts "it's true"
else
  puts "it's false"
end

The result would be "it's true" because everything in Ruby is true except for false and nil.

# 2.1 Substitue "hello" && 4.5 for 33 && 55 above. What's the output?
  The result would still be "it's true".
# 2.2 Substitue nil && 88 for 33 && 55 above. What's the output?
  Because there is a nil in the conditions, the result would be "it's false" because nil is false and the && means both conditions must be true in order to result true.
# 2.4 Substitue 63.4 < 64. What's the output?
  The output should be "it's true" because 63.4 < 64 is true.

# Question 3 :Strings

# How would you (Yes, you can look up the String methods!):

# 3.1. determine if a string is included another another string?
  To do this, you would need to use the .include? method.
# 3.2. determine if the length of a string?
  You can use the .size OR the .length methods to determine the length.
# 3.3. Go from the string "eels in my hovercraft" to "fish in my sink" but don't
# change the string "eels in my hovercraft"
  You can do this by using the .gsub method, but NOT the .gsub! method as that will change the string itself. .gsub will create another string.


# Question 4 : Variables
# Change the below string, do NOT make copies of the string. All changes
# to the string should be made in-place. (Unless told otherwise, like in 4.3.)

vehicle = "4 wheel Bus"

# 4.1 to "6 wheel Bus"
vehicle.gsub!(/4/, "6")
# 4.2 to "6 wheel tank"
vehicle.gsub!(/Bus/, "tank")
# 4.3 Create a NEW string from the string in 4.2 that will be
# "6 wheel tank that shoots rainbow bunnnies"
new_vehicle = vehicle
new_vehicle << " that shoots rainbow bunnies"


# Question 5 : Loop
# - write a loop that guesses your age.
# - Only allow 4 guesses
# - Notify the user if they guess correctly OR if they run out of turns to guess
# - Get mad and curse the fingers that thought you where that old,
# - aaaah maaan c'mon, huh, WTF
# - I'm not kidding, say unkind works to a user that thinks your 10 years older
#   than you are.

age = 19
guess = 20
tries = 1

while guess != age
  print "Guess how old I am!"
  guess = gets.chomp!.to_i
  if guess > 30
      puts "How could you think I'm that old???"
    end
  unless tries < 4
    puts "You ran out of tries"
    break
  end
  tries += 1
end

puts "You're correct, I'm #{guess}!" if guess == age

# Bonus Question: Who said this?

# The great enemy of the truth is very often not the lie -- deliberate, contrived
# and dishonest, but the myth, persistent, persuasive, and unrealistic.
# Belief in myths allows the comfort of opinion without the discomfort of thought.

John F. Kennedy
