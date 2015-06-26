# Mifflin

Mifflin provides to you all the modern tools that make front-end development easier. It organizes your Sass following [@csswizardry](https://github.com/csswizardry)'s [ITCSS](https://www.youtube.com/watch?v=1OKZOV-iLj4) and adds a little structure to your Coffescript files.

Mifflin provides all the packages you need from [inuit.css](https://github.com/inuitcss) under the hood and adds all the files you need to work on to make your app great.

This project is pretty similar to [Startaê's middleman template](http://github.com/startae/middleman-startae), the idea is to make the template we use for Middleman projects available to Rails projects.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'mifflin'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install mifflin

## Usage

After installing the gem, you need to run the generator.

**ATTENTION: The generator will delete your `application.css` and your `application.js` files. For now, mifflin is only recommended for new projects.**

    $ rails generate mifflin:install

    remove  app/assets/stylesheets/application.css
    create  app/assets/stylesheets/application.css.sass
    create  app/assets/stylesheets/_requirements.sass
    create  app/assets/stylesheets/settings
    create  app/assets/stylesheets/settings/_settings.global.sass
    create  app/assets/stylesheets/settings/_settings.fonts.sass
    create  app/assets/stylesheets/settings/_settings.colors.sass
    create  app/assets/stylesheets/settings/_settings.grid.sass
    create  app/assets/stylesheets/tools
    create  app/assets/stylesheets/tools/_tools.mixins.sass
    create  app/assets/stylesheets/tools/_tools.mediaqueries.sass
    create  app/assets/stylesheets/tools/_tools.intrinsic-ratio.sass
    create  app/assets/stylesheets/generic
    create  app/assets/stylesheets/generic/_generic.example.sass
    create  app/assets/stylesheets/base
    create  app/assets/stylesheets/base/_base.page.sass
    create  app/assets/stylesheets/base/_base.type.sass
    create  app/assets/stylesheets/objects
    create  app/assets/stylesheets/objects/_objects.containers.sass
    create  app/assets/stylesheets/components
    create  app/assets/stylesheets/components/_components.buttons.sass
    create  app/assets/stylesheets/trumps
    create  app/assets/stylesheets/trumps/_trumps.example.sass
    remove  app/assets/javascripts/application.js
    create  app/assets/javascripts/application.js.coffee
    create  app/assets/javascripts/requirements.js.coffee

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release` to create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

1. Fork it ( https://github.com/[my-github-username]/mifflin/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
