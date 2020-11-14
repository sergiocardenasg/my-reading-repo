# MyReadingRepo



## Installation

Clone this repo into your local environment and run the following commands:

Add this line to install [Bundler](https://bundler.io/):

```ruby
gem 'install bundler'
```

And then execute this to install the [Ruby Gems](https://rubygems.org/):

    $ bundle install

Run migrations:

    $ rake db:migrate 

And finally, boot up the server:

    $ shotgun

Everything should be set up.


## Usage

## Project File Structure
```
├── app
│   ├── controllers
│   │   ├── application_controller.rb
│   │   ├── users_controller.rb
│   │   └── books_controller.rb
│   ├── models
│   │   ├── book.rb
│   │   └── user.rb
│   └── views
│       ├── books
│       │   ├── create.erb
│       │   ├── lists.erb
│       │   ├── read.rb
│       │   ├── readlist.rb
│       │   └── update.rb
│       ├── users
│       │   ├── login.rb
│       │   └── signup.rb
│       ├── layout.erb
│       └── welcome.erb
├── config
│   └── environment.rb
├── db
    ├── development.sqlite
    ├── migrate
    │   ├── 20201106001009_create_users.rb
    │   ├── 20201106001039_create_books.rb
    │   └──20201108200754_add_list_column.rb
    └── schema.rb
├── lib
├── public
    ├── fonts
    ├── images
    ├── javascripts
    └── stylesheets
├── CODE_IF_CONDUCT.md
├── config.ru
├── Gemfile
├── Gemfile.lock
├── LICENSE
├── Rakefile
├── README.md
└── spec.md
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/<github username>/my-reading-repo/. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/<github username>/reading/blob/master/CODE_OF_CONDUCT.md).


## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the MyReadingRepo project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/<github username>/my-reading-repo/blob/master/CODE_OF_CONDUCT.md).
