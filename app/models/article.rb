class Article < ActiveRecord::Base
	validates :title, presence: true,
						length: { minimum: 5}

  extend FriendlyId
  friendly_id :title, use: [:slugged, :finders]

  def should_generate_new_friendly_id?
  	new_record?
  end


end
