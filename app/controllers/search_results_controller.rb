class SearchResultsController < ApplicationController
  def index
    @products = Product.fuzzy_search(description: params[:search]).page(params[:page]).per(8)
    render "products/index"
  end
end
