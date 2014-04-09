require 'jekyll/scholar'
require 'pp'
puts 'Loaded scholar'

module Jekyll
  class Scholar
    module Utilities

      alias_method :original_reference_tag, :reference_tag

      def reference_tag(entry)
        return missing_reference unless entry
        
        unless entry["url"].nil?
          entry["title"] = "[#{entry['title']}](#{entry['url']})"
          entry.delete('url')
          entry = entry.convert(*bibtex_filters) unless bibtex_filters.empty?
        end

        reference = CiteProc.process entry.to_citeproc, :style => style,
          :locale => config['locale'],
          :format => 'html'

        content_tag reference_tagname, reference, 
          :id => [prefix, entry.key].compact.join('-')
      end
    end
  end
end
