class Link < ActiveRecord::Base
	acts_as_votable
	belongs_to :user
	has_many :comments

	validates :title, presence: true
	validates :link, presence: true
	validates :description, presence: true

	def self.search(query)
	  where("link like ?", "%#{query}%") 
	end

end
