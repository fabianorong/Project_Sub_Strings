# Project: Sub Strings

This project is a solution to the Sub Strings exercise from The Odin Project's Ruby course.

The goal is to implement a `#substrings` method that takes a word as the first argument and an array of valid substrings (your dictionary) as the second argument. It should return a hash listing each substring (case-insensitive) that was found in the original string and sometimes found.

## Requirements
To use this project, you need to have Ruby installed on your computer. You can check if you have Ruby by running `ruby ​​-v` in your terminal. If you don't have Ruby, you can follow the installation instructions.

Once you have Ruby, you can clone this repository and run the `project_sub_strings.rb` file in your terminal. You can modify the file to test different inputs and outputs.

## Usage
The `#substrings` method takes two arguments: a word and a dictionary. It returns a hash with the substrings found in the word and their frequencies.

### Example
```ruby 
# project_sub_strings.rb

# Dictionary
dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

# Method
def substrings(word, dic)
  myhash ={}
    i = 0
    word = word.downcase    

    dic.each do |wordd|        
        if word.include?(wordd)
            myhash[wordd] = word.scan(wordd).length
        end
    end

    p myhash
end

# Test
puts substrings("Howdy partner, sit down! How's it going?", dictionary)
```
### Expected output
```ruby
{ "down" => 1, "go" => 1, "going" => 1, "how" => 2, "howdy" => 1, "it" => 2, "i" => 3, "own" => 1, "part" => 1, "partner" => 1, "sit" => 1 }
```
