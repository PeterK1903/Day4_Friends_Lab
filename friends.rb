def get_name(person)
  return person[:name]
end


def favourite_tv_show(person)
  return person[:favourites][:tv_show]
end

def likes_to_eat(person, food)
  for snack in person[:favourites][:snacks]
    if snack == food
      return true
    else
      return false
    end
  end
end


def add_new_friend(person, friend)
  person[:friends].push(friend)
end


def remove_friend(person, friend)
  person[:friends].delete(friend)
end


def add_up_cash(group)
  total = 0
  for person in group
    total += person[:monies]
  end
  return total
end


def loan_cash(lender, reciever, ammount)
  lender[:monies] -= ammount
  reciever[:monies] += ammount
  lender_end = lender[:monies]
  reciever_end = reciever[:monies]
end


def all_favourite_food(people)
  all_food_array = []
  for person in perople
    all_food_array += person[:favourites][:snacks]
  end
  return all_food_array
end

def no_friends(array)
  friend_array = []
  for person in array
    if person[:friends].length == 0
      friend_array.push(person)[:name]
    end
  end
  return friend_array
end 
