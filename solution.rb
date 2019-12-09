
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
i = 0
while i < students.length
full_name = students[i][:first_name]+" "+students[i][:last_name]
 upper_case_full_names.push(full_name.upcase()
)
 i +=1
 end
 p upper_case_full_names



////


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
i = 0
while i < users.length
a = users[i][:orders][0][:description]
first_order_for_each_user.push(a)
i +=1
end
p first_order_for_each_user 




\\\\\\\\\\\\\\\\\\\\\


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
i = 0
 while i < people.length  do
coffee_average_per_person = []
avarage = 0
total = 0
counter = 0
j = 0
 while j < people[i][:transactions].length do

 if people[i][:transactions][j][:type].include?("COFFEE")
  s = people[i][:transactions][j][:amount]
  counter += 1
  avarage += s
  total = avarage /counter
 end
   j +=1
  end #do for
  coffee_average_per_person.push(people[i][:name])
   coffee_average_per_person.push(total)
   
   counter = 0
   avarage = 0

 i +=1

 p coffee_average_per_person
 
 end # do for
