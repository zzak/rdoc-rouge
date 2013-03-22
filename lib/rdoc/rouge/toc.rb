module RDoc
  module Rouge
    class TOC < ::RDoc::Markup::ToTableOfContents
      class << self
        def to_list toc
          toc.map { |t| "<li><a href='##{t.aref}'>#{t.plain_html}</a></li>" }.join
        end
      end
    end
  end
end
