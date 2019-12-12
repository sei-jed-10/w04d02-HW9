# students = [
#   {
#       "first_name" => 'Abdulrahman',
#       "last_name" => 'Alsulami'
#   },
#   {
#     "first_name" => 'Leena',
#     "last_name" => 'Yaseen',
#   },
#   {
#     "first_name" => 'Sara',
#       "last_name" => 'Alraddadi',
#   }
# ]

# upper_case_full_names = []


# 3.times { |i|  upper_case_full_names.push((students[i]["first_name"]).upcase + " " + (students[i]["last_name"]).upcase)}
# p upper_case_full_names

# users = [
#   {
#       name: 'Bandar',
#       orders: [
#           {
#               description: 'a bike'
#           }
#       ]
#   },
#   {
#       name: 'Hatim',
#       orders: [
#           {
#               description: 'bees'
#           },
#           {
#               description: 'fishing rod'
#           }
#       ]
#   },
#   {
#       name: 'Mohammed',
#       orders: [
#           {
#               description: 'a MacBook'
#           },
#           {
#               description: 'The West Wing DVDs'
#           },
#           {
#               description: 'headphones'
#           },
#           {
#               description: 'a kitten'
#           }
#       ]
#   }
# ]

# first_order_for_each_user = []


# users.length.times do |i| 
# first_order_for_each_user.push(users[i][:orders][0])
# end 
# p first_order_for_each_user



people = [
  {
      name: 'Sarah',
      transactions: [
          {
              type: 'COFFEE',
              amount: 7.43
          },
          {
              type: 'TACOS',
              amount: 14.65
          },
          {
              type: 'COFFEE',
              amount: 4.43
          }
      ]
  },
  {
      name: 'Bandari',
      transactions: [
          {
              type: 'BIKES',
              amount: 800.00
          },
          {
              type: 'TACOS',
              amount: 14.65
          },
          {
              type: 'COFFEE',
              amount: 4.43
          }
      ]
  },
  {
      name: 'Safwan',
      transactions: [
          {
              type: 'COFFEE',
              amount: 7.43
          },
          {
              type: 'COFFEE',
              amount: 100.00
          },
          {
              type: 'COFFEE',
              amount: 4.43
          }
      ]
  }
]


coffee_average_per_person = []
total= 0

people.each do |name|
    total = 0 
    count = 0
#   name[name] = name[:name]

name[:transactions].each do |i|
if  i[:type] == "COFFEE"
   
      count +=1
      total += i[:amount]
      total = total / count
    
end

    end
    coffee_average_per_person.push([name: name[:name], amount: total])
end 
 
p coffee_average_per_person

# p total 
# p  coffee_average_per_person


#-----------------------

# p people.select{|x| x[:transactions][:type] == "COFFEE"}.map{|y| y[:transactions][:amount]}
# .reduce(:+)

#------------------------
# try = 0;

# x = people.select{|x| x[:transactions]}
 
#  try << x.select{|x| x[:type] == "COFFEE"}.map{|y| y[:amount]}.reduce(:+)
# people

#













# people.length.times do |j|

# people[1][:transactions].map do |key, val|
#      key[:type] == 'COFFEE'.is 
#    p x <<key[:amount]
    
#   end
# people.length.times do |j|
# p people[0][:transactions][0][:amount]
# end


  #   def avg (num)
#     num.length.times do |i|
#        num +=num[i] 
# end 
# p people.kind_of?(String)
# class Array 
#     def avg
#  inject(&:+)/size
#     end 
# end 
# p x.avg



# const hasDupes = (x) => {
#     let obj = {};
#     for (i = 0; i < arr.length; i++) {
#       if(obj[arr[i]]) {
#         return true;
#       }
#       else {
#         obj[arr[i]] = true;
#       }
#     }
#     return false;
#   };



# people[1][:transactions].map do |key, val|
#     #      key[:type] == 'COFFEE'.is 
#     #    p x <<key[:amount]
