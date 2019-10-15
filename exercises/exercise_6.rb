require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

# id | store_id | first_name | last_name | hourly_rate | created_at | updated_at 
# ----+----------+------------+-----------+-------------+------------+------------
# (0 rows)

# Exercise 6: One-to-many association
# # We haven't used the Employee class (and employees table) at all yet. If you look at this table's column structure, 
# you'll find that it has a store_id (integer) column. This is a column that identifies which store each employee belongs to. 
# It points to the id (integer) column of their store.

# # Let's tell Active Record that these two tables are in fact related via the store_id column.

# # Add the following code directly inside the Store model (class): has_many :employees
# # Add the following code directly inside the Employee model (class): belongs_to :store
# # Add some data into employees. 
# Here's an example of one (note how it differs from how you create stores): 
# @store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
# # Go ahead and create some more employees using the create method. You can do this by
#  making multiple calls to create (like you have before.) No need to assign the employees to variables 
#  though. Create them through the @store# instance variables that you defined in previous exercises. 
#  Create a bunch under @store1 (Burnaby) and @store2 (Richmond). Eg: @store1.employees.create(...).

puts "Exercise 6"
puts "----------"
@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "B", last_name: "Nima", hourly_rate: 60)
@store1.employees.create(first_name: "Travis", last_name: "Travis", hourly_rate: 60)
@store1.employees.create(first_name: "Andy", last_name: "Andy", hourly_rate: 60)
@store1.employees.create(first_name: "Karl", last_name: "Jensen", hourly_rate: 60)
@store1.employees.create(first_name: "Kenneth", last_name: "Zhang", hourly_rate: 100000)
@store2.employees.create(first_name: "Moran", last_name: "Vi", hourly_rate: 60)
@store2.employees.create(first_name: "Tjass", last_name: "Viri", hourly_rate: 60)
@store2.employees.create(first_name: "Wendy", last_name: "rani", hourly_rate: 60)
@store2.employees.create(first_name: "Hida", last_name: "ani", hourly_rate: 60)
@store2.employees.create(first_name: "calvin", last_name: "Virai", hourly_rate: 60)
@store2.employees.create(first_name: "Sining", last_name: "Viani", hourly_rate: 60)
@store2.employees.create(first_name: "Rax", last_name: "Viran", hourly_rate: 60)

