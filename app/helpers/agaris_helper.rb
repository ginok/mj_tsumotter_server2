module AgarisHelper
  
  def tehai_img_path(agari)
    return "img/#{agari.id}.jpg"
  end

  def to_img_src(str)
    i = 0
    img_list = Array.new

    while i < str.length
      img_list << 'paiimages/' + str.slice(i,2) + '.gif'
      i = i + 2
    end
    if img_list.size < 14
      (14 - img_list.size).times do
        img_list << 'paiimages/z0.gif'
      end
    end
    return img_list
  end

end
