# your code goes here
def begins_with_r(tools)
  tools.each do |tool|
    if tool[0] != 'r'
      return false
    end
  end

  true
end

def contain_a(elements)
  matches = []

  elements.each do |element|
    if element.include?('a')
      matches.push(element)
    end
  end

  matches
end

def first_wa(elements)
  elements.each do |element|
    if element[0..1] == 'wa'
      return element
    end
  end
end

def remove_non_strings(elements)
  strings = []

  elements.each do |element|
    if element.class == String
      strings.push(element)
    end
  end

  strings
end

def count_elements(elements)
  count = []
  
  elements.uniq.each do |element|
    count.push(element)
    element[:count] = elements.count(element)
  end
end

def merge_data(keys, data)
  merge = []
  for key in keys
    details = key
    data[0][key[:first_name]].each do |key2, value2|
      details[key2] = value2
    end
    merge.push(details)
  end
  merge
end