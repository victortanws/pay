class Payment < ApplicationRecord
  # Direct associations

  has_many   :comments,
             :dependent => :destroy

  belongs_to :other,
             :class_name => "User"

  belongs_to :user

  # Indirect associations

  # Validations

end
