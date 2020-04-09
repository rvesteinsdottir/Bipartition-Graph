
def possible_bipartition(dislikes)
  return true if dislikes.empty?

  i = 0 
  while dislikes[i].empty?
    i += 1
  end

  stack = []
  visited = []
  stack.push(i)

  until stack.empty?
    dog = stack.pop
    visited.push(dog)

    dislikes[dog].each do |other_dog|
      unless visited.include?(other_dog)
        stack.push(other_dog)
      end
    end
  end

  return visited.length == (dislikes.length - i)
end
