# Model for characters
class Character < ActiveRecord::Base
  has_many :medias

  def to_s
    name
  end
end
