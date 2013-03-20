require_relative 'spec_helper'

describe RDoc::Rouge do

  it "should display a version number" do
    version = RDoc::Rouge::VERSION
    assert version.is_a? String
    refute version.nil?
  end

  it 'renders a thing' do
    result = RDoc::Rouge::Renderer.render <<-mkd
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

end
