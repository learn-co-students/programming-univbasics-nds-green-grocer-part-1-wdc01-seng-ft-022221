require 'pry'

def find_item_by_name_in_collection(name, collection)
 
  index = 0 
  while index < collection.length 
      if collection[index][:item] == name
        return collection[index]
      end
    index += 1
  end
end

def consolidate_cart(cart)
  final_cart = []
  index = 0 
  while index < cart.length 
    new_item = find_item_by_name_in_collection(cart[index][:item], final_cart)
    if new_item != nil 
      new_item[:count] += 1 
    else 
      new_item = {:item => cart[index][:item], :price => cart[index][:price], :clearance => cart[index][:clearance], :count => 1}
    end
    final_cart.push(new_item)
  index += 1
end
return final_cart
end


  