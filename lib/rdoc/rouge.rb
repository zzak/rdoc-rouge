require "rdoc"
require "rdoc/rouge/formatter"
require "rdoc/rouge/version"

module RDoc
  module Rouge
    class Renderer
      attr_accessor :formatter

      def initialize(options={})
        @formatter = Rouge::Formatter.new(options)
      end

      def parse text
        ::RDoc::Markdown.parse(text).accept(@formatter)
      end
    end
  end
end
