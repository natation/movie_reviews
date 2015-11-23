require 'rails_helper'

RSpec.describe ReviewsController, type: :controller do
  let(:valid_attr) { {email: "vic@vic.com", date: Date.today, rating: 3,
                      comment: "This was a great movie!", movie_id: 1} }
  describe "#create" do
    it "adds valid review to database" do
      Review.create(valid_attr)
      expect(Review.all.length).to eq(1)
    end
  end

end
