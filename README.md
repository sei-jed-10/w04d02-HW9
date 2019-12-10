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

upper_case_full_names = students.map do |student|
      full_name = " #{student[:first_name]} #{student[:last_name]} "
      full_name.upcase
end 

puts upper_case_full_names


```

### OUTBOT

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

ANSWER
first_order_for_each_user = users.map do|order|
  "#{order[:orders].first}"
end
puts first_order_for_each_user


```

### OUTBOT

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


ANSWER

coffee_average_per_person = people.map do |person|

    coffee_sum = []
    person[:transactions].map do |transaction|
        if transaction[:type] == 'COFFEE'
            coffee_sum.push(transaction[:amount])
        end
    end

    { 
    name: person[:name] , 
    coffee_average: coffee_sum.reduce(:+) / coffee_sum.length 
    }
end

puts coffee_average_per_person


```

### OUTBOT

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

most_expensive_products_by_store = stores.map do |store|
    expensive = store[:products].max_by do |product|
        product[:price]
    end  

    {
       sotre_name: store[:store_name] ,
       most_expensive_product: store[:products],
       price: expensive[:price]

    }
end 

puts most_expensive_products_by_store
```

### OUTBOT

```rb

{:store_name=>"Jarir", :most_expensive_product=>{:description=>"Titanium", :price=>9384.33}}
{:store_name=>"Tamimi", :most_expensive_product=>{:description=>"Silver", :price=>654.44}}
{:store_name=>"Souq", :most_expensive_product=>{:description=>"Sapphire", :price=>899.33}}

```

# Bonus

Write an infinite loop that will make you add all the your friends in the students list and after each add will ask if you want to quit the loop (yes/no) if the user choose no print all the students array

### Answer


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
ANSWER
```
students_list = []
while true do
  puts "add a student name"
  students_list.push gets.chomp
  puts "Do you want to continue ? (yes/no)”
  break if gets.chomp == “no”
end
