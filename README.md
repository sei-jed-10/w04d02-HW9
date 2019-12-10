# Ruby Map Practice

![ARRAYS](https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQVWBMdo6Ac3moY3tPnzMsFVnOscOR03SxkZ4sPGGhsWoQrYMPZ9g)

## 1. Return an array of each Student's full name, upper-cased

```rb

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

 students.each do |i|

  upper_case_full_names.push(i[:first_name].upcase+" "+i[:last_name].upcase.to_s)


end

  puts upper_case_full_names

```

### Answer

```rb
ABDULRAHHMAN ALSULAMI
LEENA YASEEN
SARA ALRADDADI
```

## 2. Find the first order for each user

```rb

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

users.each do |v|

        first_order_for_each_user.push(v[:orders][0]) 

      end
 
 puts first_order_for_each_user

```

### Answer

```rb

{:description=>"a bike"}
{:description=>"bees"}
{:description=>"a MacBook"}

```

## 3. Find the average amount spent on coffee, per transaction, for each person

```rb

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

people.each do |a|

  total_amount = 0
  counter = 0
  avg = 0

    a[:transactions].map do |h|

      if h[:type] === ("COFFEE")

        counter +=1

        total_amount +=h[:amount]

        end

    end

  avg =  total_amount/counter
  coffee_average_per_person.push("name=>#{a[:name]}, coffee average=>#{avg}")
end

puts coffee_average_per_person

```

### Answer

```rb

{:name=>"Sarah", :coffee_average=>5.93}
{:name=>"Bandari", :coffee_average=>4.43}
{:name=>"Safwan", :coffee_average=>37.28666666666667}

```

## 4. Find the most expensive product for each store, with the store name:

```rb

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

stores.each do |s|

  max_price = 0
  product_desc = ''

  s[:products].map do |h|

      if h[:price] > max_price 
        max_price = h[:price]
        product_desc = h[:description]#this line took me 4 hours just to figure it out =)

        #puts "#{s[:store_name]} =>#{product_desc]}: #{max_price}"
      end

    end
 most_expensive_products_by_store.push("#{s[:store_name]} =>#{product_desc}: #{max_price}")

end

puts most_expensive_products_by_store

```

### Answer

```rb

{:store_name=>"Jarir", :most_expensive_product=>{:description=>"Titanium", :price=>9384.33}}
{:store_name=>"Tamimi", :most_expensive_product=>{:description=>"Silver", :price=>654.44}}
{:store_name=>"Souq", :most_expensive_product=>{:description=>"Sapphire", :price=>899.33}}

```

# Bonus

Write an infinite loop that will make you add all the your friends in the students list and after each add will ask if you want to quit the loop (yes/no) if the user choose no print all the students array

### Answer
```rb
students = []
flag = true
input = ''

while flag == true

  p "Add a student"
  input = gets.chomp

  students.push(input)

  p "Do you want to continue ? (y/n)"
  choice = gets.chomp

  if choice == 'n'
    flag = false
  end
  
end

p students
```
```

add a student
Amal Algregri
Do you want to continue ? (y/n)
y
add a student
Hanin Nouh
Do you want to continue ? (y/n)
y
add a student

```
