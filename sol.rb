# students = [
#     {
#         first_name: 'Abdulrahman',
#         last_name: 'Alsulami'
#     },
#     {
#         first_name: 'Leena',
#         last_name: 'Yaseen',
#     },
#     {
#         first_name: 'Sara',
#         last_name: 'Alraddadi',
#     }
#   ]


# students= students.map do |index|
#     puts (index[:first_name].upcase) +" " + (index[:last_name].upcase)
# end

#2 

# users = [
#     {
#         name: 'Bandar',
#         orders: [
#             {
#                 description: 'a bike'
#             }
#         ]
#     },
#     {
#         name: 'Hatim',
#         orders: [
#             {
#                 description: 'bees'
#             },
#             {
#                 description: 'fishing rod'
#             }
#         ]
#     },
#     {
#         name: 'Mohammed',
#         orders: [
#             {
#                 description: 'a MacBook'
#             },
#             {
#                 description: 'The West Wing DVDs'
#             },
#             {
#                 description: 'headphones'
#             },
#             {
#                 description: 'a kitten'
#             }
#         ]
#     }
#   ]
  
# users.map do |index|
#     puts index[:orders].first
# end

#3 

# people = [
#     {
#         name: 'Sarah',
#         transactions: [
#             {
#                 type: 'COFFEE',
#                 amount: 7.43
#             },
#             {
#                 type: 'TACOS',
#                 amount: 14.65
#             },
#             {
#                 type: 'COFFEE',
#                 amount: 4.43
#             }
#         ]
#     },
#     {
#         name: 'Bandari',
#         transactions: [
#             {
#                 type: 'BIKES',
#                 amount: 800.00
#             },
#             {
#                 type: 'TACOS',
#                 amount: 14.65
#             },
#             {
#                 type: 'COFFEE',
#                 amount: 4.43
#             }
#         ]
#     },
#     {
#         name: 'Safwan',
#         transactions: [
#             {
#                 type: 'COFFEE',
#                 amount: 7.43
#             },
#             {
#                 type: 'COFFEE',
#                 amount: 100.00
#             },
#             {
#                 type: 'COFFEE',
#                 amount: 4.43
#             }
#         ]
#     }
#   ]
  
# coffee = people.map do |a|
#     ave_coffee =0
#     i =0
#         a[:transactions].map do |t|
#             if t[:type] == 'COFFEE'
#                  ave_coffee +=(t[:amount])
#                  i+=1
#             end
#         end
#     puts "#{a[:name]} #{ave_coffee /= i } "
#     end
#     puts coffee


#4 


# stores = [
#     {
#         store_name: 'Jarir',
#         products: [
#             {
#                 description: 'Titanium',
#                 price: 9384.33
#             },
#             {
#                 description: 'Gold',
#                 price: 345.54
#             }
#         ]
#     }, 
#     {
#         store_name: 'Tamimi',
#         products: [
#             {
#                 description: 'Silver',
#                 price: 654.44
#             },
#             {
#                 description: 'Ruby',
#                 price: 323.43
#             }
#         ]
#     },
#     {
#         store_name: 'Souq',
#         products: [
#             {
#                 description: 'Opal',
#                 price: 345.43
#             },
#             {
#                 description: 'Sapphire',
#                 price: 899.33
#             }
#         ]
#     }
#   ]
  
#   most_exp = stores.map do |a|
#     max_price =0
#     descr = ""
#     i =0
#         a[:products].map do |t|
#             if t[:price] > max_price
#                  max_price = t[:price]
#                  descr = t[:description]
#             end
#         end
#     puts "#{a[:store_name]} #{descr}  #{max_price} "
#     end
#     puts most_exp
  

