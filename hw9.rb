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
  
  upper_case_full_names.push(students[0][:first_name].upcase)
  upper_case_full_names.push(students[0][:last_name].upcase)
  
  upper_case_full_names.push(students[1][:first_name].upcase)
  upper_case_full_names.push(students[1][:last_name].upcase)
  
  upper_case_full_names.push(students[2][:first_name].upcase)
  upper_case_full_names.push(students[2][:last_name].upcase)
  
  
  p upper_case_full_names



  ###############################################################################################

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
  
  first_order_for_each_user = users.map do |i|
      i[:orders].first
    end
    puts first_order_for_each_user

    ###############################################################################################

