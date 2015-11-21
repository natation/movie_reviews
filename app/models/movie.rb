class Movie < ActiveRecord::Base
  validates :title, :release_date, :genre, :overview, :poster_path, presence: true
  after_initialize :is_valid_date?

  has_many :reviews

  private
  def is_valid_date?
    if ((Date.parse(self.release_date) rescue ArgumentError) == ArgumentError)
      errors.add(:date, "must be a valid date")
    end
  end
end
