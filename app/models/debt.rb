class Debt < ApplicationRecord
  # Direct associations

  belongs_to :user

  # Indirect associations

  has_one    :payment,
             :through => :user,
             :source => :payments

  # Validations

end
