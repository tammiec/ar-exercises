class Employee < ActiveRecord::Base

  belongs_to :store

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates_numericality_of :hourly_rate, on: { only_integer: true, greater_than_or_equal_to: 40, less_than_or_equal_to: 200 }
  validates :store_id, presence: true

  before_create :set_password

  private
    def set_password
      self.password = [('0'..'9'),('A'..'Z'),('a'..'z')].map{ |i| i.to_a }.flatten.shuffle.first(8).join
    end

end
