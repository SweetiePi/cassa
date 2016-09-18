class Rectangle < ActiveRecord::Base
  validates :width,:height, presence:true,
                            numericality: {
                              only_integer: true,
                              less_than_or_equal_to:700,
                              greater_than_or_equal_to:1
                            }
  validates :name, presence:true
end
