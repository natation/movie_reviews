class Review < ActiveRecord::Base
  validates :email, :date, :rating, :movie_id, presence: true
  after_initialize :is_valid_date?

  belongs_to :movie

  private
  def is_valid_date?
    if ((Date.parse(self.date) rescue ArgumentError) == ArgumentError)
      errors.add(:date, "must be a valid date")
    end
  end
end
