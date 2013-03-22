require "rdoc"
require "rdoc/rouge/formatter"
require "rdoc/rouge/toc"
require "rdoc/rouge/version"

module RDoc
  module Rouge
    class Renderer
      attr_accessor :formatter

      def initialize(options={})
        @formatter = if options.delete(:toc)
                       Rouge::TOC.new
                     else
                       Rouge::Formatter.new(options)
                     end
      end

      def parse text
        html = ::RDoc::Markdown.parse(text).accept(@formatter)
        output = if @formatter.is_a? Rouge::TOC
                   Rouge::TOC.to_list(html)
                 else
                   html
                 end
      end
    end
  end
end
