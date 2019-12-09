# 1. Return an array of each Student's full name, upper-cased

students = [
  {first_name: 'Abdulrahman',
      last_name: 'Alsulami'},
  {first_name: 'Leena',
      last_name: 'Yaseen',},
  {first_name: 'Sara',
      last_name: 'Alraddadi',}
]

upper_case_full_names = []

for fn in students do
  upper_case_full_names.push("#{fn[:first_name].upcase} #{fn[:last_name].upcase}")
end
puts upper_case_full_names

# 2. Find the first order for each user

users = [
  {name: 'Bandar',
      orders: [
          {description: 'a bike'}]},
  {name: 'Hatim',
      orders: [
          {description: 'bees'},
          {description: 'fishing rod'}]},
  {name: 'Mohammed',
      orders: [
          {description: 'a MacBook'},
          {description: 'The West Wing DVDs'},
          {description: 'headphones'},
          {description: 'a kitten'}]}
]

first_order_for_each_user = []

for fo in users do
  first_order_for_each_user.push("#{fo[:name]} #{fo[:orders][0]}")
end
puts first_order_for_each_user

# 3. Find the average amount spent on coffee, per transaction, for each person

people = [
  {name: 'Sarah',
      transactions: [
          {type: 'COFFEE',
          amount: 7.43},
          {type: 'TACOS',
          amount: 14.65},
          {type: 'COFFEE',
          amount: 4.43}]},
  {name: 'Bandari',
      transactions: [
          {type: 'BIKES',
          amount: 800.00},
          {type: 'TACOS',
          amount: 14.65},
          {type: 'COFFEE',
          amount: 4.43}]},
  {name: 'Safwan',
      transactions: [
          {type: 'COFFEE',
          amount: 7.43},
          {type: 'COFFEE',
          amount: 100.00},
          {type: 'COFFEE',
          amount: 4.43}]}
]

coffee_average_per_person = []

f = 0
while f < people.length do
    coffee_average_per_person = []
    count = 0
    cons = 0
    total = 0
    n = 0
    while n < people[f][:transactions].length do
        if people[f][:transactions][n][:type] === "COFFEE"
            a = people[f][:transactions][n][:amount]
            cons += a
            count += 1
            total = cons / count
        end
        n += 1
    end
    coffee_average_per_person.push(people[f][:name])
    coffee_average_per_person.push(total)
    f += 1
    p coffee_average_per_person    
end
puts coffee_average_per_person

# 4. Find the most expensive product for each store, with the store name:

stores = [
  {store_name: 'Jarir',
      products: [
          {description: 'Titanium',
            price: 9384.33},
          {description: 'Gold',
            price: 345.54}]},
  {store_name: 'Tamimi',
      products: [
          {description: 'Silver',
            price: 654.44},
          {description: 'Ruby',
            price: 323.43}]},
  {store_name: 'Souq',
      products: [
          {description: 'Opal',
            price: 345.43},
          {description: 'Sapphire',
            price: 899.33}]}
]

most_expensive_products_by_store = []

for store in stores do
    expensive = {}
    expensive[:store_name] = store[:store_name]
    expensive[:most_expensive_product] = store[:products].max_by { |x| x [:price] }
    most_expensive_products_by_store.push(expensive)
  end
puts most_expensive_products_by_store