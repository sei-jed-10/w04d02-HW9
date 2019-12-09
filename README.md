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

```

### Answer
upper_case_full_names = []

students.each { |first_name|  
upper_case_full_names.push(first_name[:first_name].upcase+" "+first_name[:last_name].upcase)
} 
puts upper_case_full_names

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

```

### Answer

users.each { |name|

first_order_for_each_user.push(name[:orders].first)
} 
puts first_order_for_each_user

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

```

### Answer

```rb
people.each { |name|
i=1
total_amount=0
average_for_person=0
name[:transactions].each{ |type|
if(type[:type]==="COFFEE")
total_amount=total_amount+type[:amount]
average_for_person= total_amount/i
puts i
i=i+1
end
}
coffee_average_per_person.push(name[:name])
coffee_average_per_person.push(average_for_person)
} 
p coffee_average_per_person

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

```

### Answer

```rb
stores.each { |name|
most_expensive_product=0
most_expensive_product_des=""
name[:products].each{ |price|
if(price[:price]>=most_expensive_product)
most_expensive_product=price[:price]
most_expensive_product_des=price[:description]
end
}
most_expensive_products_by_store.push(name[:store_name])
most_expensive_products_by_store.push(most_expensive_product_des)
most_expensive_products_by_store.push(most_expensive_product)
} 
p most_expensive_products_by_store

{:store_name=>"Jarir", :most_expensive_product=>{:description=>"Titanium", :price=>9384.33}}
{:store_name=>"Tamimi", :most_expensive_product=>{:description=>"Silver", :price=>654.44}}
{:store_name=>"Souq", :most_expensive_product=>{:description=>"Sapphire", :price=>899.33}}

```

# Bonus

Write an infinite loop that will make you add all the your friends in the students list and after each add will ask if you want to quit the loop (yes/no) if the user choose no print all the students array

### Answer

```
input = ""
friends=""
until input == "n" do
  puts "add a student"
  friends = gets.chomp
  friends_arr.push(friends)
  puts "Do you want to continue ? (y/n)"
  input = gets.chomp
end
puts friends_arr


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
