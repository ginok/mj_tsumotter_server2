require 'open-uri'
require 'tempfile'

module Mlfielib
  module Web
    class ImageFetcher
      def save_image(uri)
        basename = File.basename(uri)
        temp = Tempfile::new(basename, "/tmp")
        temp.binmode
        open(uri, "rb") do |data|
          temp.write(data.read)
        end
        temp.close
        temp.path
      end
    end
  end
end
