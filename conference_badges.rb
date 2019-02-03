# Write your code here.
def badge_maker (name)
  return "Hello, my name is #{name}."
end

#optimized
#array.map returns new array with block applied to every element
def batch_badge_creator(names)
  names.map {|n| badge_maker(n)}
end

#optimized
#array.collect is the same as array.map
def assign_rooms(names)
  names.each_with_index.collect {|name, i| "Hello, #{name}! You'll be assigned to room #{i+1}!"}
end

def printer(names)
  batch_badge_creator(names).each {|n| puts n}
  assign_rooms(names).each {|n| puts n}
end

# original
def batch_badge_creator1(names)
  badges = []
    names.each do |name|
      badges.push(badge_maker(name))
    end
  return badges
end

#original
def assign_rooms1(names)
  rooms = []
  names.each_with_index do |name, i|
    rooms.push("Hello, #{name}! You'll be assigned to room #{i+1}!")
  end
  rooms
end
