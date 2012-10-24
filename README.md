# Foundation Rails Confirm

This gem adds some javascript to change the default behaviour of data-confirm processing. It is inspired by https://github.com/bluerail/twitter-bootstrap-rails-confirm.

## Installation

Add to Gemfile:

    gem 'foundation_rails_confirm'


Add it to your application.js:

    //= require foundation_rails_confirm


## Usage

  Your existing confirm dialogs will automatically use this library.

  To pass more information you can use these new options:

* data-confirm-title (default: window.top.location.origin)
* data-confirm-cancel (default: 'cancel')
* data-confirm-proceed (default: 'ok')
* data-confirm-proceed-class (default: 'proceed')

  Usage Example:

    link_to t('.destroy'), some_item_path,
      :method => :delete,
      :class => "button",
      :confirm => t('.destroy_confirm.body', :item => options[:item]),
      "data-confirm-title" => t('.destroy_confirm.title', :item => options[:item]),
      "data-confirm-cancel" => t('.destroy_confirm.cancel', :item => options[:item]),
      "data-confirm-proceed" => t('.destroy_confirm.proceed', :item => options[:item]),
      "data-confirm-proceed-class" => "alert"
    end


## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
