class Review < ActiveRecord::Base
  include ActiveModel::Validations
  validates :email, :rating, :movie_id, presence: true
  validates :email, email: true
  validate :is_valid_date?

  belongs_to :movie

  private
  def is_valid_date?
    if ((Date.parse(self.date.to_s) rescue ArgumentError) == ArgumentError)
      self.errors.add(:date, "must be a valid date")
    end
  end
end
