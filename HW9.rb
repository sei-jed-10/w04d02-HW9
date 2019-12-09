#1. Return an array of each Student's full name, upper-cased
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

for student in students #for each student in the students list:
    #push the concatenated string containing both the student's first and last names converted to uppercase letters.
    upper_case_full_names.push(student[:first_name].upcase+" "+student[:last_name].upcase)
end
p upper_case_full_names

#-------------------------------------------------------------------------------------------------------

#2. Find the first order for each user
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
for user in users #for each user in the users array:
    first_order_for_each_user.push(user[:orders][0]) #push the very first order (located at index 0) of the orders' array of that person into (first_order_for_each_user) array.
end
puts first_order_for_each_user

#-------------------------------------------------------------------------------------------------------

#3. Find the average amount spent on coffee, per transaction, for each person
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

for person in people #loop through the array of people
    coffee_counter=0 #for each person on the list, set a counter for the "COFFEE" occurances in the transactions array.
    personal_sum=0 #also, initialize a variable to use in summing the amount spent by the person of coffee.
    for transaction in person[:transactions] #for each transaction made by this person (array of transaction for that person):
        if transaction[:type]=='COFFEE' #if the current transaction type matches "COFFEE"
            coffee_counter+=1 #increment the counter for the coffee occurances.
            personal_sum+=transaction[:amount] #add the amount spent for that transaction to the total sum of coffee transactions made by that person.
        end
    end
    coffee_average_per_person.push({name: person[:name],average: (personal_sum/coffee_counter)}) #ccalculate the average and push it along  with the person's name to the array.
end
puts coffee_average_per_person

#-------------------------------------------------------------------------------------------------------
#4. Find the most expensive product for each store, with the store name:
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

for store in stores #for each store in the stores array:
    max_priced_product=store[:products][0] #set the most priced product as the first element of that store's list of products.
    for product in store[:products] #loop through the array of products of that store.
        if product[:price]>max_priced_product[:price] #if the current product (this itration) is more expensive than the previously set one, 
            max_priced_product=product #mark the current product as the most expensive one.
        end
    end
    #push the product set as the max priced (most expensive) product for that store along with its name to the array.
    most_expensive_products_by_store.push({store_name: store[:store_name],most_expensive_product: max_priced_product })
end

puts most_expensive_products_by_store

#-------------------------------------------------------------------------------------------------------
students_list=[]

loop do
    p "add a student" 
    user_answer=gets #Ask the user to input the student's name.
    students_list.push(user_answer) #Push the name entered by the user to the students list.
    p "Do you want to continue ? (y/n)"
    continue=gets.chomp
   break if (continue=="n") #The program should keep asking the user for an input as long as the answer is 'y'.
   end
   puts "List of students:" 
   puts students_list #print the array of students.

 



