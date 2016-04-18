require 'rails_helper'

describe ProductsController do
  describe "GET #index" do

  let(:product) { Product.create(
    name: "appel",
    description: "yum"
    )}

    it "assigns @products and renders the index template" do

      get :index

      expect(assigns(:products)).to eq([:product])
      expect(response).to render_template("index")
    end
  end
end
