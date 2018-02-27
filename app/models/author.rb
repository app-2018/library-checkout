class Author < ApplicationRecord
  has_and_belongs_to_many :books
  def full_name
    "#{self.first_name} #{self.last_name}"
  end
end
