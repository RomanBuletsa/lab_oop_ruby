class Categorycomment < ApplicationRecord
	belongs_to :user
	belongs_to :category
	validates :text, length: { in: 1..100}
	validates :text, presence: true
end
