class Product < ActiveRecord::Base
  attr_accessible :description, :image_url, :price, :title
  validates :title, :length => { :minimum => 10 }
  validates :title, :uniqueness => {:message => 'ya ha sido utilizado'}
  validates :title, :description, :image_url, :presence => true
  validates :price, :numericality => {:greater_than_or_equal_to => 0.01}
  validates :image_url, :format => {
    :with    => %r{\.(gif|jpg|png)$}i,
    :message => 'must be a URL for GIF, JPG or PNG image'
  }
end
