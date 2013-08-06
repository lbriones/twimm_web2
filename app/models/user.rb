class User < ActiveRecord::Base
  attr_accessible :estado_id, :foto, :nivel_id, :password, :username
  belongs_to :nivel
  belongs_to :estado

  FOTOS = File.join Rails.root, 'public', 'IMG'
  after_save :guardar_foto
  
  def foto(file_data)
  		unless file_data.blank?
  		@file_data = file_data
  		self.extension = file_data.original_filename.split('.').last.downcase
  		end
  end

  def photo_filename
  		File.join FOTOS, "#{id}.#{extension}"
  end

  def photo_path
  		"/IMG/#{id}.#{extension}"
  end

  def has_photo?
  		File.exists? photo_filename
  end


  private
  def guardar_foto
  	if @file_data
  		FileUtils.mkdir_p IMG
  		File.open(photo_filename, 'wb') do |f|
  			f.write(@file_data.read)
  		end
  		@file_data = nil
  	end
  end
end
