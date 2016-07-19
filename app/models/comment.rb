class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :link, dependent: :destroy

  validates :body, presence: true
end
