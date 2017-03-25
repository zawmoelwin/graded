class Test < ApplicationRecord
  belongs_to :teacher , class_name: "User"
  has_many :unique_codes

end
