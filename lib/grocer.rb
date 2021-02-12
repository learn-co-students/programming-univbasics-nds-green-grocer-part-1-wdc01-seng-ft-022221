require 'pry'

def find_item_by_name_in_collection(name, collection)
  # Implement me first!
  #
  # Consult README for inputs and outputs
  
  result = nil
  
  collection.each do |listing|
    if listing[:item] == name
      result = listing
    end
  end 
  
  return result
  
end

def consolidate_cart(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This returns a new Array that represents the cart. Don't merely
  # change `cart` (i.e. mutate) it. It's easier to return a new thing.

  simple_cart = []
  
  
  
  cart.each do |listing|
    
    if !simple_cart.flatten.include?(listing[:name])
      listing[:count] = 0 
      simple_cart << listing
    end
    
    simple_cart.map do |e|
      if e[:item] == listing[:item]
         e[:count] += 1
      end 
    end
    
  end

  
  simple_cart

end


  