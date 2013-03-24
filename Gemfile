source 'https://rubygems.org'

gemspec

dep = case ENV['rouge']
      when 'stable', nil then nil
      when /(\d+\.)+\d+/ then "~> " + ENV['rouge'].sub("#{lib}-", '')
      else {:git => 'git://github.com/jayferd/rouge.git', :branch => dep}
      end
gem 'rouge', dep
