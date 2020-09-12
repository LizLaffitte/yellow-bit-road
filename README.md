# YellowBitRoad

A Ruby on Rails application designed to help self-taught programmers keep track of their coding learning goals. Users can chart their own roads to learning new programming languages and concepts. Create a new road and add courses as checkpoints along that road. You can assign goal completion dates to both checkpoints and learning roads. 

YellowBitRoad was built from my own experience as a self-led programming student. I would often find courses online for a language I didn't know, or know well, and want to take at a later date. It was difficult to keep track of them all, and organize them in into a clear road to learning something new. YellowBitRoad was created to serve as a tool for creating and organizing those roads, as well as a way to discover new programming courses to take. 

![YellowBitRoad Homepage](https://user-images.githubusercontent.com/52801558/92999556-bd638b00-f4ef-11ea-9947-2875bc884ba2.PNG)


## Use YellowBitRoad Online
You can find our deployed app on Heroku: https://yellowbitroad.herokuapp.com/

### Signup or Login
[Signup](https://yellowbitroad.herokuapp.com/signup) or [login](https://yellowbitroad.herokuapp.com/login) to start using the application.

### Your Profile
Once you're logged in, you can click on your username in the upper right to view your profile page. Your profile will feature a list of your learning roads.

![Profile](https://user-images.githubusercontent.com/52801558/93002959-a715f900-f508-11ea-9288-501c297c67fa.PNG)

### Create Roads
To create a new road, visit your profile and click the Add A New Road button.

Fill out the form to create a new road. You can add your first checkpoint here, if you see a course you'd like to add. You can choose whether you want your road publicly viewable by others on the app.

![NewRoad](https://user-images.githubusercontent.com/52801558/93002992-e6444a00-f508-11ea-9254-7b6c5e180b60.PNG)

### Courses
View the [Course Catalog](https://yellowbitroad.herokuapp.com/courses) to see what courses have already been added to YellowBitRoad. You can choose to learn more about each course, or add it to an existing road. 

![Courses](https://user-images.githubusercontent.com/52801558/93003032-391e0180-f509-11ea-9f27-b84756df6671.PNG)

New courses can be added when creating checkpoints.

## Creating Checkpoints
Visit the road you'd like to add a checkpoint to, and click the Add Checkpoint button.

From this form, you can create a new checkpoint and pick an existing course, or add a new course that can be used by others on the app.

![NewCheckpoint](https://user-images.githubusercontent.com/52801558/93003051-61a5fb80-f509-11ea-9a0e-eafbeeec4fd8.PNG)

## Updating Your Learning Road
You can edit your checkpoints and your roads by viewing them and clicking the edit button.

Finished a checkpoint? Mark it complete on your road. You did it!

![Road Complete Message Screensho](https://user-images.githubusercontent.com/52801558/93003106-dc6f1680-f509-11ea-8ed8-d4468ba11c3a.PNG)

## Local Installation Instructions

These instructions will get YellowBitRoad up and running on your computer.

### Prerequisites

Other than the gems listed in this app's Gemfile, you will need to have [Ruby](https://www.ruby-lang.org/en/downloads/) and [Rails](https://guides.rubyonrails.org/v5.0/getting_started.html) installed on your local machine as well as the ability to install Ruby gems.

### Installing

To run this app locally, fork and clone the [GitHub repo](https://github.com/LizLaffitte/yellow-bit-road) to your local machine. 

Change directories into the repo directory. Run bundle install to install dependencies, and rails db:migrate and rails db:seed to create and seed the database. 
```
$cd yellowbitroad 
$bundle install
$rails db:migrate
$rails db:seed
```

Run $rails s to start a web server and access the app in a web browser. 
```
$rails s
```

Use your favorite browser to visit the route displayed in the terminal. (E.g. http://localhost:3000)

## Built With

* Rails
* Ruby 
* Tears of a Programmer

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/LizLaffitte/yellow-bit-road. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the Contributor Covenant [code of conduct](https://github.com/LizLaffitte/yellow-bit-road/code_of_conduct.md).


## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details
