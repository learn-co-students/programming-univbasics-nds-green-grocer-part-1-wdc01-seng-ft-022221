require 'pry'

def find_item_by_name_in_collection(name, collection)
  found_item = nil
  collection.each do |index|
    if index[:item] == name
      found_item = index      
      end
    end
    found_item
end

def consolidate_cart(cart) 
 result_cart = []

  cart.each_with_index do |item, index| 
    item_hash = find_item_by_name_in_collection(cart[index][:item], result_cart)
    
      if item_hash != nil
         item_hash[:count] += 1 
      else 
        new_entry = {
          :item => cart[index][:item],
          :price => cart[index][:price],
          :clearance => cart[index][:clearance],
          :count => 1
        }
        result_cart << new_entry
      end
  end
  result_cart
end
