class Test < ApplicationRecord
  belongs_to :teacher , class_name: "User"

end
