class Book < ApplicationRecord
  has_and_belongs_to_many :authors
  validates :title, presence: true
  accepts_nested_attributes_for :authors, reject_if: :incomplete_author

  # See http://api.rubyonrails.org/classes/ActiveRecord/NestedAttributes/ClassMethods.html
  def incomplete_author(attributes)
    attributes['last_name'].blank?
  end
end
