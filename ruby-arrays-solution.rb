#1 Return an array of each Student's full name, upper-cased

students = [
    {
        first_name: 'Abdulrahman',
        last_name: 'Alsulami'
    },
    {
        first_name: 'Leena',
        last_name: 'Yaseen',
    },
    {
        first_name: 'Sara',
        last_name: 'Alraddadi',
    }
  ]
  
  upper_case_full_names = []
  uppercase = students.map do |a|
    caps_val = "#{a[:first_name]} #{a[:last_name]}"
    caps_val.upcase
  end 
  puts uppercase

# # # # # # # # # # # # # # # # # # # # # # 
#2  Find the first order for each user

users = [
    {
        name: 'Bandar',
        orders: [
            {
                description: 'a bike'
            }
        ]
    },
    {
        name: 'Hatim',
        orders: [
            {
                description: 'bees'
            },
            {
                description: 'fishing rod'
            }
        ]
    },
    {
        name: 'Mohammed',
        orders: [
            {
                description: 'a MacBook'
            },
            {
                description: 'The West Wing DVDs'
            },
            {
                description: 'headphones'
            },
            {
                description: 'a kitten'
            }
        ]
    }
  ]
  
  first_order_for_each_user = []

  first_order = users.map do |a|
  order= "#{a[:orders].first}"
  order
   end 
   puts first_order

 # # # # # # # # # # # # # # # # # # # # # # 
#3  Find the average amount spent on coffee, per transaction, for each person

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

coffee = people.map do |a|
ave_coffee =0
count =0
    a[:transactions].map do |t|
        if t[:type] == 'COFFEE'
             ave_coffee +=(t[:amount])
             count+=1
        end
    end

puts "#{a[:name]} #{ave_coffee /= count } "
end

puts coffee

 # # # # # # # # # # # # # # # # # # # # # # 
#4 Find the most expensive product for each store, with the store name:


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

info = {:store_name=> a[:store_name], :most_expensive_product=>{:description=> a[:products][product_price.index(product_price.max)][:description] , :price=> product_price.max}}

end
puts expensive_store

# # # # # # # # # # # # # # # # # # # # # # 
# Bonus Write an infinite loop that will make you add all the your friends in the students list
# and after each add will ask if you want to quit the loop (yes/no)
# if the user choose no print all the students array

students = []
loop do
  puts "add a student"
  student = gets.chomp 
  students.push(student)

  puts "Do you want to continue ? (y/n)"
  cont = gets.chomp
  if cont == "n"
      students.each {|student| p "#{student}"}
      break
  end
end