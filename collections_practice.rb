def begins_with_r(array)
  array.each do |word|
    return false unless word.start_with?("r" || "R")
  end
  return true
end

def contain_a(array)
  words_with_a = []
  array.each do |word|
    if word.include?("a" || "A")
      words_with_a << word
    end
  end
  words_with_a
end

def first_wa(array)
  word_wa = []
  array.each do |word|
    if (word[0] == "w" && word[1] == "a")
      word_wa << word
      break
    end
  end
  word_wa[0]
end

def remove_non_strings(array)
  remove_these = []
  array.each do |word|
    if word.is_a? String
      remove_these << word
      break
    end
  end
  remove_these
end

def count_elements(array)
  array.each do |word|
    word[:count] = 0
    name = word[:name]
    array.each do |pair|
      if pair[:name] == name
        word[:count] += 1
      end
    end
  end.uniq
end

def merge_data(keys, values)
  key_data = []
  keys.each do |person_name|
    name = person_name[:first_name]
    values.each do |person_data|
      if person_data[name]
        keys_data_pair = person_data[name]
        keys_data_pair[:first_name] = name
        key_data << keys_data_pair
      end
    end
  end
  key_data
end

def find_cool(array)
  cool = []
  array.each do |x|
    cool << x if x[:temperature] == "cool"
  end
  cool
end

def organize_schools(schools)
  schools_organized = {}
  schools.each do |name, location_key|
    location = location_key[:location]
    if schools_organized[location]
      schools_organized[location] << name
    else
      schools_organized[location] = []
      schools_organized[location] << name
    end
  end
  schools_organized
end
