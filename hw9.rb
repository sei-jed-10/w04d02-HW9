#1.Return an array of each Student's full name, upper-cased
$students = [
  {
      first_name: 'Abdulrahman',
      last_name: 'Alsulami',
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
$arr = []
def upper_case_full_names
 for user in $students do
   user.each do |key, val|
   $arr.push(val)
  end
 end
 puts "#{$arr[0].upcase} #{$arr[1].upcase}"
 puts "#{$arr[2].upcase} #{$arr[3].upcase}"
 puts "#{$arr[4].upcase} #{$arr[5].upcase}"
end
upper_case_full_names

#2.Find the first order for each user
$users = [
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

def first_order_for_each_user
    $users.each do |key|
    puts key[:orders][0]
  end
end

first_order_for_each_user 

#3.Find the average amount spent on coffee, per transaction, for each person
$people = [
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
$arr = []
$name = []
def coffee_average_per_person
  $people.each do |key|
    $name.push(key[:name])
    key[:transactions].each do |key|
    $arr.push(key[:amount])
    end
  end
   $s = (($arr[0] + $arr[2]) / 2)
   $b = $arr[5]
   $sa = (($arr[6] + $arr[7] + $arr[8]) / 3)
   puts = "#{$name[0]} :coffee_average #{$s}, #{$name[1]} :coffee_average #{$b}, #{$name[2]} :coffee_average #{$sa}"
end
coffee_average_per_person


#4.Find the most expensive product for each store, with the store name:
$stores = [
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
$arr = []
def most_expensive_products_by_store
  $stores.map do |store|
    $store_name = store[:store_name]
    $store_pro = store[:products].max_by {|price| price[:price]}

    $arr.push($store_name)
    $arr.push($store_pro)

  end
  puts $arr
end

most_expensive_products_by_store 


#5.Bonus

$arr = []
while true
  puts "Add a Student name: "
  $arr.push(student_name)
  puts "Do you want to continue ? (y/n)"
  answer = gets.chomp
  student_name = gets.chomp

  if answer === "y"
    
  elsif answer === "n"
    break
  end 
end
puts $arr

