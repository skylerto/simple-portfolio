Simple Portfolio
================

Simple Portfolio is a rails application which host portfolios. User's can create
an account, add projects, and snippets to create a full online portfolio.

## Usage

Clone, install, run.

```
$ git clone https://github.com/skylerto/simple-portfolio.git; cd
simple-portfilio
$ bundle install
$ rails s
```

## Technical 

### Dependencies

*Please consult the Gemfile for specifics on versioning, and ruby version.*

Some important gem/lesson: Uses `aws-sdk` for storing images in a aws bucket.
This is done because Heroku does not allow for storage on the server by default
(at the time of building this app).

### Database

Currently there is no seed data, would love to have some though!

## License

MIT © Skyler Layne 2015.
