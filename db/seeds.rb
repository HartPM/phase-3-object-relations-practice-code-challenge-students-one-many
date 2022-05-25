puts "Clearing old data..."
Cohort.destroy_all
Student.destroy_all

# This will create 5 cohorts using a random date
puts "Seeding cohorts..."
c1 = Cohort.create(
  name: "Cohort 1",
  current_mod: rand(1..5)
)
c2 = Cohort.create(
  name: "Cohort 2",
  current_mod: rand(1..5)
)
c3 = Cohort.create(
  name: "Cohort 3",
  current_mod: rand(1..5)
)
c4 = Cohort.create(
  name: "Cohort 4",
  current_mod: rand(1..5)
)
c5 = Cohort.create(
  name: "Cohort 5",
  current_mod: rand(1..5)
)

puts "Seeding students..."
# TODO: create seed data for students
# check your schema and make sure to create students with all the necessary data
s1 = Student.create(
  name: "Dude",
  age: 45,
  cohort_id: 1
)

s2 = Student.create(
  name: "Bunny",
  age: 35,
  cohort_id: 2
)

s3 = Student.create(
  name: "Walter",
  age: 47,
  cohort_id: 3
)

s4 = Student.create(
  name: "Mr. Lebowski",
  age: 63,
  cohort_id: 4
)

s5 = Student.create(
  name: "Marmot",
  age: 2,
  cohort_id: 5
)

s6 = Student.create(
  name: "Nihilist 1",
  age: 35,
  cohort_id: 1
)

s7 = Student.create(
  name: "Nihilist 2",
  age: 28,
  cohort_id: 1
)

s8 = Student.create(
  name: "Jackie Treehorn",
  age: 53,
  cohort_id: 2
)

s9 = Student.create(
  name: "Maude",
  age: 41,
  cohort_id: 2
)


puts "Done!"