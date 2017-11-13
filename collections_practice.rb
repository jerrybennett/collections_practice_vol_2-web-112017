require 'pry'
def begins_with_r(array)
  array.all? {|word| word.start_with?("r")}
end

def contain_a(array)
  array.select {|word| word.include?('a')}
end

def first_wa(array)
  new_arr = []
  array.each do |i|
    new_arr << i.to_s
  end
  new_arr.find {|x| x.start_with?("w")}
end

def remove_non_strings(array)
  array.keep_if {|i| i.is_a? String}
end

def count_elements(array)
  array.group_by{|i| i}.map{|name, count| name.merge(count: count.length)}
end

def merge_data(keys, data)
  # found in a stackoverflow thread
  data[0].values.map.with_index {|v, i| keys[i].merge(v)}
end

def find_cool(array)
  cool = []
  cool << array.find{|hash| hash[:temperature] == "cool" }
end

def organize_schools(array)
  hash = {}
  array.each do |school, data|
    data.each do |location, city|
      hash[city] = []
      hash.each do |name, arr|
        school.each do |d, l|
          
        end
      end
    end
  end

locations_hash = {}
schools.collect do |k,v|
  locations_hash[v[:location]] = []
end
locations_hash.each do |k,v|
  schools.each do |k1,v1|
    if k == v1[:location]
      v << k1
    end
  end
end


binding.pry
end
