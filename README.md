# Testing with Rspec

## Setting up Rspec

Add the gem in your gemfile

`source "https://rubygems.org"`

`gem "rspec"`

Then run the below command:

`bundle install --path .bundle`

## Writing the first spec

You need to make the directory spec

`mkdir spec`

Inside this directory add all of your specs.

Add the classes in the `lib` directory.

`mkdir lib`

## Running Specs

`bundle exec rspec`

Running a specific spec:

`bundle exec rspec spec/file_name_spec.rb`
