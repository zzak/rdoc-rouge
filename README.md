# RDoc::Rouge

Syntax highlighting for RDoc using the pygments friendly Rouge.

## Installation

Add this line to your application's Gemfile:

    gem 'rdoc-rouge'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install rdoc-rouge

## Usage

    require 'rdoc/rouge'
    renderer = RDoc::Rouge::Renderer
    html = renderer.parse <<-markdown
    ```ruby
    def hello(who)
      puts "Hello, #{who}!"
    end
    ```
    markdown

If you just want to generate a table of contents from your markdown, we have
exposed RDoc::Markup::ToTableOfContents

    RDoc::Rouge::Renderer.new(:toc => true).parse("# markdown")
    #=> "<li><a href='#label-markdown'>markdown</a></li>"

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
