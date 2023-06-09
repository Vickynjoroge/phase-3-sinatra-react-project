class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "Welcome to victory stores" }.to_json
  end

  get "/products" do
    product = Product.all
    product.to_json
  end

  get "/users" do
    user = User.all
    user.to_json
  end


  get "/reviews" do
    review = Review.all
    review.to_json
  end

  post "/orders" do
    order = Order.create(
      price: params[:price],
      name: params[:name]
    )
    order.to_json
  end

  post '/reviews' do
    review = Review.create(
      rating: params[:rating],
      comment: params[:comment],
      product_id: params[:product_id],
      user_id: params[:user_id]
    )
    review.to_json
  end

  patch '/products/:id' do 
    product = Product.find(params[:id])
    product.update(
      rate: params[:rate],
      category: params[:category]
    )
    product.to_json
  end

end
