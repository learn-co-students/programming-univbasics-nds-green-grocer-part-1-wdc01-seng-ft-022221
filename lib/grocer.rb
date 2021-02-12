require 'pry'

def find_item_by_name_in_collection(name_search, test_cart)
  i = 0

  while i <test_cart.length do
    if test_cart[i].values[0] == name_search
      return test_cart[i]
    end
    i += 1
  end
  return nil
end


# def consolidate_cart(cart)
#   output = {}
#   i=0
#
#   while i < cart.length do
#     cart[i][:count] = 1
#     i += 1
#   end
#
#   if output.values.find? find_item_by_name_in_collection(name_search, cart)
#
#
#
#
# end
# # cart[0][:count]+=1
def consolidate_cart(cart)
  index = 0
  new_cart = []

  cart.each do |grocery_item|
    current_item = find_item_by_name_in_collection(grocery_item[:item], new_cart)
    if current_item
      new_cart_index = 0
      new_cart.each do |new_cart_item|
        if new_cart_item[:item] === current_item[:item]
          new_cart_item[:count] += 1
        end
        new_cart_index += 1
      end
    else
      grocery_item[:count] = 1
      new_cart << grocery_item
    end
    index += 1
  end
  new_cart
end
