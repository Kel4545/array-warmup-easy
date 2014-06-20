require_relative "testing_library"

dogs = ["Fido", "Harleigh", "Mali", "Trixie", "Snow", "Victory"]

def how_many_dogs(dogs)
  dogs.count
  end

def name_lengths(dogs)
  dogs=dogs.map(&:length)
  end

def reverse_dog_names(dogs)
  dogs=dogs.map(&:reverse)
  end

def first_three_dogs_with_each(dogs)
  first_three_dogs = []
  dogs.each_index do |dog, index|
    if index <= 2
      first_three_dogs.push(dog)
    end
  end
  return first_three_dogs
end

def first_three_dogs_without_each(dogs)
  return dogs.first(3)
end

def reverse_case_dog_names(dogs)
  return dogs.map(&:swapcase)
end

def sum_of_all_dog_name_lengths(dogs)
  sum = 0
  dogs.each {|dog| sum += dog.length}
  return sum
end

def dogs_with_long_names(dogs)
  length_array = []
  dogs.each do |dog|
    length_array.push(dog.length > 4)
  end
  return length_arrays
end

puts "*"*80
puts "Make each method return the correct value"
puts "The check method will run and tell you if the answer is correct"
puts "*"*80



check("how_many_dogs", how_many_dogs(dogs) == 6)
check("name_lengths", name_lengths(dogs) == [4, 8, 4, 6, 4, 7])
check("reverse_dog_names", reverse_dog_names(dogs) == ["odiF", "hgielraH", "ilaM", "eixirT", "wonS", "yrotciV"])
check("first_three_dogs_with_each", first_three_dogs_with_each(dogs) == ["Fido", "Harleigh", "Mali"])
check("first_three_dogs_without_each", first_three_dogs_without_each(dogs) == ["Fido", "Harleigh", "Mali"])
check("reverse_case_dog_names", reverse_case_dog_names(dogs) == ["fIDO", "hARLEIGH", "mALI", "tRIXIE", "sNOW", "vICTORY"])
check("sum_of_all_dog_name_lengths", sum_of_all_dog_name_lengths(dogs) == 33)
check("dogs_with_long_names", dogs_with_long_names(dogs) == [false, true, false, true, false, true])



