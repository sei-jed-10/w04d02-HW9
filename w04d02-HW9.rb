# 1. Return an array of each Student's full name, upper-cased
def fullName()
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
    #upper_case_full_names = []
    studentLen = students.length
    i = 0

while i < studentLen do
    students[i].each do |key, val|
        #upper_case_full_names.push("#{val} " "".upcase)
        puts "#{val} " "".upcase
        i += 1 
    end
    #p upper_case_full_names
end
end
fullName()
##############################################################

# 2. Find the first order for each user

def usersFun()
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
    
    #first_order_for_each_user = []
    len = users.length
    i = 0
    while i < len do
       p users[i][:orders][0]
       i += 1
        
    end
    #p users[1][:orders][0]
    end
    
    usersFun()

##########################################################
# 3. Find the average amount spent on coffee, per transaction, for each person 


