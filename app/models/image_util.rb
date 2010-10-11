class ImageUtil
  include Magick

  # 1.thumbnail
  def self.generate_thumbnail(img_path)
    if img_path =~ /^(.*)(.jpg|.JPG|.gif|.GIF|.png|.PNG|.bmp|.BMP|.jpeg|.JPEG)$/
      thumbnail_path = $1 + "_s" + $2
      p = ImageList.new img_path
      s = p.thumbnail(64,64)
      s.write thumbnail_path
      return thumbnail_path
    end
  end

  # 2.composite
  def self.generate_composite(img_path, text = SITE_DOMAIN)
    if img_path =~ /^(.*)(.jpg|.JPG|.gif|.GIF|.png|.PNG|.bmp|.BMP|.jpeg|.JPEG)$/
      composite_path = $1 + "_c" + $2
      d = Draw.new
      d.gravity = SouthWestGravity
      p = ImageList.new img_path
      d.annotate(p, 0,0,0,0, text) {
        self.fill = 'gray80'
      }
      p.write composite_path  
      return composite_path
    end
  end

end