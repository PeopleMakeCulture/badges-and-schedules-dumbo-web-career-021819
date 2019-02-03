# Write your code here.
def badge_maker (name)
  return "Hello, my name is #{name}."
end

# original
def batch_badge_creator1(names)
  badges = []
    names.each do |name|
      badges.push(badge_maker(name))
    end
  return badges
end

# optimized
def batch_badge_creator(names)
  names.map {|n| badge_maker(n)}
end 

def assign_rooms(names)
  rooms = []
  names.each_with_index do |name, i|
    rooms.push("Hello, #{name}! You'll be assigned to room #{i+1}!")
  end
  rooms
end

def printer(names)
  batch_badge_creator(names).each {|n| puts n}
  assign_rooms(names).each {|n| puts n}
end
