# Rails CDN Helper

## Description

The gem is a CDN helper for Rails. The default CDN service is `https://cdnjs.com/`.

## Installation

1. Put this into your Gemfile

``` ruby
gem 'rails-cdn-helper'
```

and run ``bundle install``.

2. Start your rails application.

## Usage

In the layout head add this code

``` erb
<%= cdn_css 'font-awesome/4.7.0/css/font-awesome.min.css' %>
```

and output as below:

``` html
<link rel="stylesheet" media="screen" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
```

## Overwrite CDN uri

1. Create `config/cdn.yml`

2. Add content as below:

``` yml
development:
  uri: https://CDN_DOMAIN_NAME/
test:
  uri: https://CDN_DOMAIN_NAME/
production:
  uri: https://CDN_DOMAIN_NAME/
```

3. Restart your rails application.
