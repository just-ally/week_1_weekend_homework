def pet_shop_name(pet_shop)
  return pet_shop[:name]
end

def total_cash(pet_shop)
  return pet_shop[:admin][:total_cash]
end

def add_or_remove_cash(pet_shop, amount)
  pet_shop[:admin][:total_cash] += amount
end

def pets_sold(pet_shop)
  return pet_shop[:admin][:pets_sold]
end

def increase_pets_sold(pet_shop, number_of_pets_sold)
  pet_shop[:admin][:pets_sold] += number_of_pets_sold
end

def stock_count(pet_shop)
  return pet_shop[:pets].length
end

def pets_by_breed(pet_shop, breed_to_search)
  pet_breed = []
  for pet in pet_shop[:pets]
    if pet[:breed].include? breed_to_search
      pet_breed.push(pet)
    end
  end
  return pet_breed
end

def find_pet_by_name(pet_shop, name_to_find)
  for pet in pet_shop[:pets]
    if pet[:name] == name_to_find
      return pet
    end
  end
  return nil
end

def remove_pet_by_name(pet_shop, name_to_remove)
  for pet in pet_shop[:pets]
    if pet[:name] == name_to_remove
      pet_shop[:pets].delete(pet)
    end
  end
end

def add_pet_to_stock(pet_shop, new_pet)
  pet_shop[:pets].push(new_pet)
end

def customer_cash(customer)
  return customer[:cash]
end

def remove_customer_cash(customer, amount)
  customer[:cash] -= amount
end

def customer_pet_count(customer)
  return customer[:pets].count
end

def add_pet_to_customer(customer, new_pet)
  customer[:pets].push(new_pet)
end
