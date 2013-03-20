require "rdoc"
require "rdoc/rouge/formatter"
require "rdoc/rouge/version"

module RDoc
  module Rouge
    class Renderer
      class << self
        def render text
          ::RDoc::Markdown.parse(text).accept(Rouge::Formatter.new)
        end
      end
    end
  end
end
