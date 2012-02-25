class Image < ActiveRecord::Base

 # ORIGINAL
 #has_attached_file :image,
 #   :styles => { :normal => "600x448>", :thum => "100x100>" },
 #   :url  => "/assets/products/:id/p_:style.:basename.:extension",
 #   :path => "public/assets/products/:id/p_:style.:basename.:extension"

 has_attached_file :image,
    :styles => { :normal => "600x448>", :thum => "100x100>" },
    :url  => "/assets/image/:id_:style.:extension",
    :path => "public/assets/image/:id_:style.:extension"



  # ====================================
  # Paper Clip upload from url
  # ====================================
  attr_accessor :image_url
  before_validation :download_remote_image, :if => :image_url_provided?
  validates_presence_of :image_remote_url, :if => :image_url_provided?, :message => 'is invalid or inaccessible'

  private

  def image_url_provided?
    !self.image_url.blank?
  end

  def download_remote_image
    self.image = do_download_remote_image
    self.image_remote_url = image_url
  end

  def do_download_remote_image
    io = open(URI.parse(image_url))
    def io.original_filename; base_uri.path.split('/').last; end
    io.original_filename.blank? ? nil : io
    rescue # catch url errors with validations instead of exceptions (Errno::ENOENT, OpenURI::HTTPError, etc...)
  end

end
