# ActiveRecord Implicit Order

This gem backports Rails 6 `implicit_order_column` setting on ActiveRecord class.

Check out [this blog post](https://pawelurbanek.com/uuid-order-rails) for more detailed info.

## Installation

In your Gemfile

```ruby
gem 'activerecord-implicit-order'
```

## Usage

`models/application_record.rb`

```ruby

class ApplicationRecord < ActiveRecord::Base
  ...
  extend ActiveRecordImplicitOrder
end

class User < ApplicationRecord
  ...
  self.implicit_order_column = 'created_at'
end

```


