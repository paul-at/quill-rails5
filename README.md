# Quill::Rails5

This gem provides simple way to use Quill.js Rich Text Editor in Rails applications.

The gem helpers load Quill.js from the CDN, render and initialise Quill editor and optionally link rich text editor with form using Rails FormBuilder.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'quill-rails5', github: 'paul-at/quill-rails5'
```

## Usage

The simplest way to load editor is to call

```erb
<%= quill({}, {}) %>
```

For more advanced use, the gem allows to specify html options and default value
```erb
<%= quill({}, style: 'height:35em') do %>
  <%= default_contents.html_safe %>
<% end %>
```

If you experience Quill glitches when using turbolinks, add `data: { turbolinks: false }` html option to all external links to the page with editor.

## Usage with forms

To use Quill editor inside a FormBuilder form, the gem provides `quill_field` helper:
```erb
<%= quill_field f, :object_field %>
```
where `f` is a FormBuilder instance (from `form_for do |f|`) and `:object_field` is name of the field in form object.

This helper renders a hidden field and uses jQuery to update hidden field on form submission. It assumes that Turbolinks are enabled, triggering on `turbolinks:load` event.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

