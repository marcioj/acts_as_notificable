# ActAsNotificable
> Add notifications for ActiveRecord objects

[![Build Status][travis_badge]][travis]

:warning: This is still under development

# Instalation

Add in your Gemfile:

`gem 'act_as_notificable', github: 'marcioj/act_as_notificable`

And then run

`bundle install`

To copy the `Notification` model to your application and create the migration use

`rails generate act_as_notificable:install`

And then migrate with

`rake db:migrate`

# Usage

Add `act_as_notificable` for the model that you want to add notifications

```
class User < ActiveRecord::Base
  act_as_notificable
end
```

This will add a has_many assocition called `notifications`

```
user = User.first
user.notifications.size # => 0
```

To create a new notification template, add a file like you would do for a controller action, but in the `app/views/notifications` directory

*app/views/notifications/hello.html.erb*
```
<h1>Hello <%= message %></h1>
```

Create a new notification based on this template using
```
user = User.first
user.notifications << Notification.create_notification(:hello, message: "World")
user.notifications.first.render # => "<h1>Hello World</h1>"
```

# Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

[travis]: https://travis-ci.org/marcioj/act_as_notificable
[travis_badge]: https://travis-ci.org/marcioj/act_as_notificable.svg?branch=master
