## 1. Return an array of each Student's full name, upper-cased

upper_case_full_names = []
p students = [
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



 for student in students do
  upper_case_full_names.push "#{student[:first_name].upcase} #{student[:last_name].upcase}"
 end



## 2. Find the first order for each user

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
 puts key [:orders][0]
end
end

first_order_for_each_user
