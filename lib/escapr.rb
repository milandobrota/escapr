module ActionView
  module Helpers

    def escapr(text, options={})
      text = h(text)
      if options[:safe] && !options[:safe].empty?
        text.gsub!(/&lt;(\s*)(\/?)(\s*)(#{options[:safe].to_a.join('|')})(\s*)&gt;/, "<\\2\\4>")
      end
      text
    end


  end
end
