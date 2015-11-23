require 'rails_helper'

RSpec.describe MoviesController, type: :controller do
  let(:valid_attr) { {title: "cats", release_date: Date.today, genre: "comedy",
                      overview: "Cool cats", poster_path: "path/to/poster"} }
  before(:each) do
    Movie.create(valid_attr)
  end

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #show" do
    it "returns http success" do
      get :show, {id: Movie.first.id}
      expect(response).to have_http_status(:success)
    end
  end

end
