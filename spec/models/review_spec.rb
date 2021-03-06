require 'rails_helper'

RSpec.describe Review, type: :model do
  let(:valid_attr) { {email: "vic@vic.com", date: Date.today, rating: 3,
                      comment: "This was a great movie!", movie_id: 1} }
  let(:incorrect_email_attr) { {email: "vic@com", date: Date.today, rating: 3,
                      comment: "This was a great movie!", movie_id: 1} }
  let(:no_movie_id_attr) { {email: "vic@vic.com", date: Date.today, rating: 3,
                      comment: "This was a great movie!"} }
  let(:incorrect_date_attr) { {email: "vic@vic.com", date: 'hi', rating: 3,
                      comment: "This was a great movie!"} }
  let(:no_comment_attr) { {email: "vic@vic.com", date: Date.today, rating: 3,
                           movie_id: 1} }

  describe "#valid?" do
    context "when making a new Review with valid attributes" do
      it "is valid" do
        expect(Review.new(valid_attr)).to be_valid
      end
    end

    context "when making a new Review with invalid email attribute" do
      it "is NOT valid" do
        expect(Review.new(incorrect_email_attr)).to_not be_valid
      end
    end

    context "when making a new Review with no movie_id attribute" do
      it "is NOT valid" do
        expect(Review.new(no_movie_id_attr)).to_not be_valid
      end
    end

    context "when making a new Review with an incorrect date attribute" do
      it "is NOT valid" do
        expect(Review.new(incorrect_date_attr)).to_not be_valid
      end
    end

    context "when making a new Review with no comment attribute" do
      it "is valid" do
        expect(Review.new(no_comment_attr)).to be_valid
      end
    end
  end
end
