class Article < ActiveRecord::Base
	belongs_to :user #, :foreign_key => 'user_name', :primary_key => 'user_name'
	has_many :comments
	validates :title, presence: true, length: { maximum: 50 }
	validates :post, presence: true
end
