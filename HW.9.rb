
 
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
upper_case_full_names = []
i=0
  students.map   do 
  |v| 
 s =students[i][:first_name]+" "+students[i][:last_name]
  
i+=1
p s.upcase
 upper_case_full_names.push(s)
  end
 
 
 
## 2. Find the first order for each user

 

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
 


i=0
 users.map   do 
  |v| 
 s =users[i][:orders][0] 
  
i+=1
p s
first_order_for_each_user.push(s)
  end



{:description=>"a bike"}
{:description=>"bees"}
{:description=>"a MacBook"}



# second

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
 
count =3

 sum=0
 avg=0
people.map do 
  |v| 
   p v[:name]
count =3
i=0
sum=0
v[:transactions].map do |g| 
 if g[:type]=='COFFEE'
    sum+=g[:amount]
   else 
  count-=1
  i+=1
  end


  avg= sum/count
 
# if v[i][:transactions][i][:type]=='COFFEE'
# count+=1
# s= v[i] [:transactions]  [:amount]
  
# i+=1

#  s+=s
# coffee_average_per_person.push(s)
#   end
#  p sum/count


end
p "#{v[:name] } " " #{avg}"
 
end 
 


## Answer

 
# {:name=>"Sarah", :coffee_average=>5.93}
# {:name=>"Bandari", :coffee_average=>4.43}
# {:name=>"Safwan", :coffee_average=>37.28666666666667}

 
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
  
  
  
  
   
   
   
   stores.map do 
    |v| 
   
   
  max=0
   mxa=0
  v[:products].map do |g| 
  
  
   if g[:price]> mxa
      # sum+=g[:amount]
      
      mxa= g[:price] 
      # max = mxa
    end 
    # else max = mxa
  # 
    # avg= sum/count
  
  end
  p"#{v[ :store_name]} "  "#{}#{mxa}"
  
  end