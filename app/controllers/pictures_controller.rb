class PicturesController < ApplicationController

  def index
    @image_hash = Dir["app/assets/images/*"]
      .map { |f| [File.basename(f), Digest::MD5.digest(File.read(f))] }
      .group_by{ |filename, md5| md5 }
      .map { |k, v| { filename: v.first.first, count: v.count } }
      .sort_by { |data| - data[:count] }
  end

end