class Child < ApplicationRecord
  belongs_to :parent
  validates :name, presence: true
  belongs_to :has_parent_1, -> {
               where(parents: { name: "Parent 1" })
             }, class_name: "Parent", foreign_key: "parent_id"

  scope :has_name, ->(name) {
      eager_load(:parent).where(parents: { name: name })
    }
end
