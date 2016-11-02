class Recipe < ActiveRecord::Base
  include Filterable
  belongs_to :food_type
  belongs_to :food_preference
  belongs_to :cuisine
  DIFFICULTY = %w(Easy Medium Hard)

  validates :title, presence: true
  validates :cooking_time, presence: true
  validates :difficulty_level, presence: true
  validates :food_type, presence: true
  validates :food_preference, presence: true
  validates :cuisine, presence: true
  validates :ingredients, presence: true
  validates :procedure, presence: true
  
  def self.search(search)
    if search
      where('title LIKE ?', "%#{search}%")
    else
      all
    end
  end
end


