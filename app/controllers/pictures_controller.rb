class PicturesController < ApplicationController

  def index
    @image_hash = Dir["app/assets/images/*"]
      .map { |f| [File.basename(f), File.size(f)] }
      .group_by{ |filename, size| size }
      .map { |k, v| { filename: v.first.first, count: v.count } }
      .sort_by { |data| - data[:count] }
  end

end