class Payment < ApplicationRecord
  # Direct associations

  has_many   :likes,
             :dependent => :destroy

  has_many   :comments,
             :dependent => :destroy

  belongs_to :other,
             :class_name => "User"

  belongs_to :user

  # Indirect associations

  has_one    :debt,
             :through => :user,
             :source => :debts

  # Validations

end
