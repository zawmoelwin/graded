class UniqueCode < ApplicationRecord
  belongs_to :student , class_name: "User"
  belongs_to :test


end
