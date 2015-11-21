require 'rails_helper'

RSpec.describe Movie, type: :model do
  let(:valid_attr) { {title: "cats", release_date: Date.today, genre: "comedy",
                      overview: "Cool cats", poster_path: "path/to/poster"} }
  let(:invalid_date_attr) { {title: "cats", release_date: "hi", genre: "comedy",
                             overview: "Cool cats", poster_path: "path/to/poster"} }
  let(:no_overview_attr) { {title: "cats", release_date: Date.today, genre: "comedy",
                            poster_path: "path/to/poster"} }
  describe "#valid?" do
    context "when making a new Movie with valid attributes" do
      it "is valid" do
        expect(Movie.new(valid_attr)).to be_valid
      end
    end

    context "when making a new Movie with an invalid date attribute" do
      it "is NOT valid" do
        expect(Movie.new(invalid_date_attr)).to_not be_valid
      end
    end

    context "when making a new Movie with no overview attribute" do
      it "is NOT valid" do
        expect(Movie.new(no_overview_attr)).to_not be_valid
      end
    end
  end
end
