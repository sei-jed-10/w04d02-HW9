## Question 1 Solution
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

# Looped through the array of hashes and obtained the keys first name and last name and concatted them together.
students.each do |name|
    puts "#{name[:first_name].upcase}" + " " + "#{name[:last_name].upcase}"
end

## Question 2 Solution
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

# Not a dynamic solution, but got the index and key then printed out together
first_order_for_each_user = []
p1 = users[0][:orders][0]
p2 = users[1][:orders][0]
p3 = users[2][:orders][0]

puts first_order_for_each_user + p1.to_a + p2.to_a + p3.to_a


## Question 3 solution
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

people.each do |human|
    sum = 0
    count = 0 ## Count the type which "COFFEE"
    human[:transactions].each do |amount|
        #p amount[:type]
        #p amount[:amount]
        if amount[:type] == "COFFEE"
            sum = sum+amount[:amount]
            count +=1
        end
    
    end
    puts "#{human[:name]} : #{sum/=count}"
    end
    


## Question 4 Solution
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

## Initilized a variable x which will store the highest price in products array then print it out

stores.each do |name|
    x = 0
    name[:products].each do |product|
      product[:price]
      
      if product[:price] > x
            x = product[:price]

      end

    end
    puts "#{name[:store_name]} has the highest price which is #{x} "

end
