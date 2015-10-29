class Recipe < ActiveRecord::Base
	has_many :ingredients, :dependent => :destroy
	accepts_nested_attributes_for :ingredients, :reject_if => lambda { |a| a[:content].blank }, :allow_destroy => true
	mount_uploader :img, ImgUploader
end
