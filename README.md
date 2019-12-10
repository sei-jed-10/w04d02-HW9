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
student1 = students[0].values
p student1.join(" ").upcase

student2 = students[1].values
p student2.join(" ").upcase

student3 = students[2].values
p student3.join(" ").upcase

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

puts first_order = users[0].values[1]
puts first_order = users[1].values[1][0]
puts first_order = users[2].values[1][0]

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

#Sarah -------------------#
 first = people[0]
 coffee1 = first.to_a[1][1]
  avg = coffee1[0].values[1] + coffee1[2].values[1] 
  coffee_avg = avg /2
  name1 = people[0].values[0]
  p "name: #{name1}, coffee average: #{coffee_avg}" #output 
#Bandari -------------------#
  second = people[1]
 coffee2 = second.to_a[1][1]
  coffee2[2] 
  coffee2_avg = coffee2[2].values[1] 
  name2 = people[1].values[0]
  p "name: #{name2}, coffee average: #{coffee2_avg}" #output 
#Safwan -------------------#
  third = people[2]
 coffee3 = third.to_a[1][1]
 coffee3
 coffee3_avg = coffee3[0].values[1] + coffee3[1].values[1] + coffee3[2].values[1]
  avrg = coffee3_avg / 3
  name3 = people[2].values[0]
   p "name: #{name3}, coffee average: #{avrg}" #output 
  

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

```
#jarir#
  stores[0]
 store_name1 = stores[0].values[0]
 products = stores[0].values[1]
  ex = products[0]
 puts "store #{store_name1} , most expensive product: #{ex}"

#tamimi#

 stores[1]
 store_name1 = stores[1].values[0]
 products = stores[1].values[1]
  ex = products[0]
 puts "store #{store_name1} , most expensive product: #{ex}"

#Souq#
stores[2]
 store_name1 = stores[2].values[0]
 products = stores[2].values[1]
  ex = products[1]
 puts "store #{store_name1} , most expensive product: #{ex}"


```rb

{:store_name=>"Jarir", :most_expensive_product=>{:description=>"Titanium", :price=>9384.33}}
{:store_name=>"Tamimi", :most_expensive_product=>{:description=>"Silver", :price=>654.44}}
{:store_name=>"Souq", :most_expensive_product=>{:description=>"Sapphire", :price=>899.33}}

```

# Bonus

Write an infinite loop that will make you add all the your friends in the students list and after each add will ask if you want to quit the loop (yes/no) if the user choose no print all the students array

### it did nt work.. but ll keep trying and resubmit : ) 
puts "add all your friends in student list"
loop do
  puts "add a student"
  input = gets.chomp
  break if input == "name1"  and "name2"
  
end
puts "You made it out! Congrats!"


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
