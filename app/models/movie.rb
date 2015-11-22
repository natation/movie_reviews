class Movie < ActiveRecord::Base
  validates :title, :release_date, :genre, :overview, :poster_path, presence: true
  validate :is_valid_date?

  has_many :reviews, dependent: :destroy

  private
  def is_valid_date?
    if ((Date.parse(self.release_date.to_s) rescue ArgumentError) == ArgumentError)
      self.errors.add(:date, "must be a valid date")
    end
  end
end
