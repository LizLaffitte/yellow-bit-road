# YellowBitRoad

A Ruby on Rails application designed to help self-taught programmers keep track of their coding learning goals. Users can chart their own roads to learning new programming languages and concepts. Create a new road and add courses as checkpoints along that road. You can assign goal completion dates to both checkpoints and learning roads. 

YellowBitRoad was built from my own experience as a self-led programming student. I would often find courses online for a language I didn't know, or know well, and want to take at a later date. It was difficult to keep track of them all, and organize them in into a clear road to learning something new. YellowBitRoad was created to serve as a tool for creating and organizing those roads, as well as a way to discover new programming courses to take. 

## Use YellowBitRoad Online
You can find our deployed app on Heroku: https://yellowbitroad.herokuapp.com/

### Signup

### Login




## Local Installation Instructions

These instructions will get YellowBitRoad up and running on your computer.

### Prerequisites

Other than the gems listed in this app's Gemfile, you will need to have (Ruby)[https://www.ruby-lang.org/en/downloads/] and [Rails](https://guides.rubyonrails.org/v5.0/getting_started.html) installed on your local machine as well as the ability to install Ruby gems.

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
