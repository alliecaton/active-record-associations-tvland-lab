class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name 
    "#{self.first_name.to_s} #{self.last_name.to_s}"
  end

  def list_roles
    self.characters.map do |character|
        "#{character.name} - #{character.show.name}"
    end
  end 

end

