# ActiveadminFileInputOnSteroids

This gem adds 2 functionalities to the file input field. Image preview and a size hint based on paperclip styles.

## Installation

Add this line to your application's Gemfile:

    gem 'activeadmin_file_input_on_steroids'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install activeadmin_file_input_on_steroids

## Usage

Include javascript to your active_admin.js file.

```javascript
//=  require activeadmin_file_input_on_steroids
```

Include the css to your active_admin.css.scss
```css
@import "activeadmin_file_input_on_steroids";
```

Now, when in your forms, when you create a file input, you have 2 new options, image_preview and size_hint.

```ruby
f.input :photo, image_preview: true, size_hint: true
```


## Contributing

1. Fork it ( http://github.com/<my-github-username>/activeadmin_file_input_on_steroids/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
