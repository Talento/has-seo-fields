# HasSeoFields

HasSeoFields add to your models utility seo fields, thanks to this gem you can get your models have fields ready for a good SEO system.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'has_seo_fields', git: 'git@github.com:the-cocktail/has-seo-fields.git'
```

And then execute:

```shell
$ bundle
```

Install migrations

```shell
rake has_seo_fields_engine:install:migrations
```

Review the generated migrations then migrate
```shell
rake db:migrate
```

## Usage

Include el module Seasonable in your model:

```ruby
class ModelName < ActiveRecord::Base
  include HasSeoFields
  ...
end
```

Now you can save the values `seo_title`, `seo_meta_description`, `seo_meta_keywords`, `seo_robot`, `seo_canonical`, `og_image` in your model. Remember add this values through `seo_tag` relation using `accepts_nested_attributes_for` Rails system.

```erb
<%= form.fields_for :seo_tag do |f| %>
  <%= f.text_field :seo_title %>
  <%= f.text_field :seo_meta_description %>
  <%= f.text_field :seo_meta_keywords %>
  <%= f.text_field :seo_robot %>
  <%= f.text_field :seo_canonical %>
  <%= f.text_field :og_image %>          
<% end %>
```