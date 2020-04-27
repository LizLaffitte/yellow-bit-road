# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
users = [
    ['LizLaff', 'laffitte.digital@gmail.com', 'psWrd', true],
    ['DinoBoy', 'trex@test.com', 'dinosrock', false],
    ['Jordan', 'aviation@gmail.com', 'aviation', true]
]
users.each do |username, email, password, admin| 
    User.create(username: username, email: email, password: password, admin: admin)
end

roads = [
    ['Beginning', true, '2020-12-20', '1'],
    ['Front End Development', true, '2020-10-10', '1'],
    ["Basic HTML & HTML5", true, '2021-01-31', '1'],
    ["Learn SQL", true, "2020-06-15", "2", ]
]
roads.each do |name, public, goal_date, user_id| 
        Road.create(name: name, public: public, goal_date: goal_date, user_id: user_id)
end

courses = [
    ["Python Basics", "Learn the building blocks of the wonderful general purpose programming language Python.", "Easy", "https://www.pythonforbeginners.com/basics/", "Python"], 
    ["Introducing Lists", "Lists are a powerful data type that allow you to store multiple ordered values in a single container. You are gonna love them.", "Easy", "https://teamtreehouse.com/library/introducing-lists", "Python"], 
    ["Introducing Tuples", "Learn about a python data structures that's similar to lists, but with one key difference!", "Easy", "https://teamtreehouse.com/library/introducing-tuples", "Python"],
    ["CSS Basics", "Learn vanilla CSS", "Easy", "", "CSS"], 
    ["HTML Basics", "We'll start with the basic building blocks of HTML.", "Easy", "", "HTML"],
    ["Debugging CSS with Chrome DevTools", "Using Chrome's built-in debugging tools to solve your CSS problems.", "Moderate", "", "CSS"],
    ["CSS Layouts Basics", "Learn how to create basic layouts using display and position.", "Easy", "", "CSS"],
    ["Responsive Layouts", "Mobile-first web design and media queries.", "Moderate", "", "Web Design"], 
    ["Intro to Basic HTML and HTML5", "HTML and HTML5 basics", "Easy", "", "HTML"], 
    ["SQL Fundamentals", "Learn how to use SQL quickly and effectively with this course! You'll learn how to read and write complex queries to a database using one of the most in demand skills - PostgreSQL.", "Easy", "https://www.udemy.com/course/the-complete-sql-bootcamp/", "SQL"]
]

courses.each do |name, description, difficulty, source_url, topic| 
    Course.create(name: name, description: description, difficulty: difficulty, source_url: source_url, topic: topic)
end
checks = [
["2020-07-01", false, "1", "1", "1"], 
["2020-05-15", true, "2", "1", "1"],
["2020-05-30", true, "3", "1", "1"],
["2020-09-20", false, "5", "2", "1"],
["2020-09-19", true, "6", "2", "1"],
["2020-09-25", false, "7", "2", "1"],
["2020-09-30", false, "8", "2", "1"],
["2020-10-01",  false,  "9",  "2", "1"],
["2020-12-01",  false,  "10",  "3", "1"],
["2020-04-20",  false,  "11",  "4", "2"]

]
checks.each do |goal_date, completed, course_id, road_id, user_id| 
    Checkpoint.create(goal_date: goal_date, completed: completed, course_id: course_id, road_id: road_id, user_id: user_id)
end