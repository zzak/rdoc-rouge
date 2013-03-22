require_relative 'spec_helper'

describe RDoc::Rouge do

  it "should display a version number" do
    version = RDoc::Rouge::VERSION
    assert version.is_a? String
    refute version.nil?
  end

  it "renders a thing" do
    renderer = RDoc::Rouge::Renderer.new
    result = renderer.parse <<-mkd
``` javascript
var foo = 1;
```

``` shell
foo=1
```
    mkd

    doc = Nokogiri::HTML(result)
    refute_empty doc.search("pre.highlight")
    assert doc.search("pre.highlight").size == 2
  end

  it "renders with pipe" do
    renderer = RDoc::Rouge::Renderer.new(:pipe => true)
    result = renderer.parse "# Hello, World!"

    assert_equal result, "\n<h1 id=\"label-Hello%2C+World%21\">Hello, World!</h1>\n"
  end

  it "renders toc" do
    renderer = RDoc::Rouge::Renderer.new(:toc => true)
    result = renderer.parse "# Foo"

    assert_equal result, "<li><a href='#label-Foo'>Foo</a></li>"
  end

end
