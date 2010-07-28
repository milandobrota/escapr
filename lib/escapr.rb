module ActionView
  module Helpers

    def escapr(text, options={})
      text = h(text)
      if (safe = options[:safe]) && !safe.empty?
        if safe.is_a?(Hash)
          safe.each do |tag, values|
            text.gsub!(/&lt;(\/?)(#{safe.to_a.join('|')})(\s#{values.to_a.join('|')}=('|&quot;)(.*?)('|&quot;))*?&gt;/xi) do |matched|
              "<#{$1}#{$2}#{$3}>".gsub("&quot;",'"')
            end
          end
        else
          text.gsub!(/&lt;(\/?)(#{safe.to_a.join('|')})(.*?)&gt;/xi, "<\\1\\2\\3>")
        end
      end
      text
    end
  end
end
