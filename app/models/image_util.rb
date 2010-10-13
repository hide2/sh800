class ImageUtil
  include Magick
  IMAGE_PATH = "/upload/images/"
  WIDTH = 300
  
  def self.save_image(img)
    img_name = Time.now.to_i.to_s + Time.now.tv_usec.to_s + ".jpg"
    directory = IMAGE_PATH + Date.today.strftime("%Y-%m-%d")
    abs_directory = RAILS_ROOT + "/public" + directory
    if !File.exist?(abs_directory)
      Dir.mkdir abs_directory
    end
    img_path = File.join(directory, img_name)
    abs_path = RAILS_ROOT + "/public" + img_path
    File.open(abs_path, "wb") { |f| f.write(img.read) }
    generate_thumbnail(abs_path)
    generate_composite(abs_path)
    return img_path
  end

  # 1.thumbnail
  def self.generate_thumbnail(img_path)
    if img_path =~ /^(.*)(.jpg|.JPG|.gif|.GIF|.png|.PNG|.jpeg|.JPEG)$/
      thumbnail_path = $1 + "_s.jpg"
      p = ImageList.new img_path
      s = p.thumbnail(64,64)
      s.write thumbnail_path
      return thumbnail_path
    end
  end

  # 2.composite
  def self.generate_composite(img_path, text = SITE_DOMAIN)
    if img_path =~ /^(.*)(.jpg|.JPG|.gif|.GIF|.png|.PNG|.jpeg|.JPEG)$/
      composite_path = $1 + "_c.jpg"
      d = Draw.new
      d.gravity = SouthWestGravity
      p = ImageList.new img_path
      height = (WIDTH.to_f * p.rows / p.columns).to_i
      p.thumbnail!(WIDTH, height) if p.columns > 300
      d.annotate(p, 0,0,5,0, text) {
        self.fill = 'gray80'
      }
      p.write composite_path  
      return composite_path
    end
  end

end