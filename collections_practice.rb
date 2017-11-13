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
  new_arr = []
  # data[0].values.map.with_index {|v, i| keys[i].merge(v)}
  data.each do |k, v|
    v.each do |name, info|
      info.each do |j|
        new_arr << j
      end
    end
  end
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
    end
  end
  hash.each do |name, arr|
    array.each do |school, data|
      data.each do |location, city|
        if name == city
          arr << school
        end
      end
    end
  end
  return hash
end
