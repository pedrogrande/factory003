class Course < ActiveRecord::Base
	extend FriendlyId
	friendly_id :title, use: :slugged

	has_many :intakes
	has_many :course_registrations
	has_many :registrations, through: :course_registrations
	
	scope :published, -> { where(publish: true) }

	attr_accessible :title, :icon, :publish, :intro, :description, :designed_for
end
