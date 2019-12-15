# # students = [
# #   {
# #       "first_name" => 'Abdulrahman',
# #       "last_name" => 'Alsulami'
# #   },
# #   {
# #     "first_name" => 'Leena',
# #     "last_name" => 'Yaseen',
# #   },
# #   {
# #     "first_name" => 'Sara',
# #       "last_name" => 'Alraddadi',
# #   }
# # ]

# # upper_case_full_names = []


# # 3.times { |i|  upper_case_full_names.push((students[i]["first_name"]).upcase + " " + (students[i]["last_name"]).upcase)}
# # p upper_case_full_names

# # users = [
# #   {
# #       name: 'Bandar',
# #       orders: [
# #           {
# #               description: 'a bike'
# #           }
# #       ]
# #   },
# #   {
# #       name: 'Hatim',
# #       orders: [
# #           {
# #               description: 'bees'
# #           },
# #           {
# #               description: 'fishing rod'
# #           }
# #       ]
# #   },
# #   {
# #       name: 'Mohammed',
# #       orders: [
# #           {
# #               description: 'a MacBook'
# #           },
# #           {
# #               description: 'The West Wing DVDs'
# #           },
# #           {
# #               description: 'headphones'
# #           },
# #           {
# #               description: 'a kitten'
# #           }
# #       ]
# #   }
# # ]

# # first_order_for_each_user = []


# # users.length.times do |i| 
# # first_order_for_each_user.push(users[i][:orders][0])
# # end 
# # p first_order_for_each_user



# people = [
#   {
#       name: 'Sarah',
#       transactions: [
#           {
#               type: 'COFFEE',
#               amount: 7.43
#           },
#           {
#               type: 'TACOS',
#               amount: 14.65
#           },
#           {
#               type: 'COFFEE',
#               amount: 4.43
#           }
#       ]
#   },
#   {
#       name: 'Bandari',
#       transactions: [
#           {
#               type: 'BIKES',
#               amount: 800.00
#           },
#           {
#               type: 'TACOS',
#               amount: 14.65
#           },
#           {
#               type: 'COFFEE',
#               amount: 4.43
#           }
#       ]
#   },
#   {
#       name: 'Safwan',
#       transactions: [
#           {
#               type: 'COFFEE',
#               amount: 7.43
#           },
#           {
#               type: 'COFFEE',
#               amount: 100.00
#           },
#           {
#               type: 'COFFEE',
#               amount: 4.43
#           }
#       ]
#   }
# ]


# coffee_average_per_person = []

# people.each do |name|
#     total = 0 
#     sum =0 

# name[:transactions].each do |i|
 
# if  i[:type] == "COFFEE"
#     sum +=1
#     total += i[:amount]
# end
# end


# total = total / sum
#  coffee_average_per_person.push([name: name[:name], amount: total]) 
# end 
 
#   p coffee_average_per_person

#------------------------------------------

stores = [
    {
        store_name: 'Jarir',
        products: [
            {
                description: 'Titanium',
                price: 9384.33
            },
            {
                description: 'Gold',
                price: 345.54
            }
        ]
    },
    {
        store_name: 'Tamimi',
        products: [
            {
                description: 'Silver',
                price: 654.44
            },
            {
                description: 'Ruby',
                price: 323.43
            }
        ]
    },
    {
        store_name: 'Souq',
        products: [
            {
                description: 'Opal',
                price: 345.43
            },
            {
                description: 'Sapphire',
                price: 899.33
            }
        ]
    }
  ]
  
most_expensive_products_by_store = []

expensive_store = stores.map do |a|

product_price = a[:products].map do |p|
          p[:price]
    end
    
    info = {:store_name=> a[:store_name], 
        :most_expensive_product=>{:description=> a[:products][product_price.index(product_price.max)][:description] ,
            :price=> product_price.max}}
    
    end
puts expensive_store
 





#   count =0
  
# # stores.each do |i|
# #  count += 1
# #  sum =0
# # # p counts[i] += 1

# # i[:products].each do |x|


# # p first_price = x[:price]
# # p second_price= x[:price] 
# # price_new =0 
# # if first_price > second_price
#     price_new = first_price
# end 
# else
#     price_new = second_price
# end 
# end 

# if x[:pirce] > [x+1][:price]

# sum +=x[:price]
# end

# most_expensive_products_by_store.push([price: sum])
# end
# end
# p most_expensive_products_by_store







# most_expensive_products_by_store.push([name: i[:name], price: price])
# name=i[:store_name]
# des=x[:description]
# price = x[:price]
# nextPrice =  i[:products][1][:price]
# priceWin=0
# if price > nextPrice
#     priceWin=price
# else if nextPrice > price
#     priceWin = nextPrice
# else
#     return

# end 
# end 

# most_expensive_products_by_store.push([store: name, price: priceWin ])
# end
# end
# p most_expensive_products_by_store



