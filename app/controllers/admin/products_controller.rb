<<<<<<< HEAD
class Admin::ProductsController < AdminController

  def index
    @products = Product.all
=======
class Admin::ProductsController < ApplicationController

  layout "admin"

  before_action :authenticate_user!
  before_action :admin_required

  def index
    @products =Product.all
>>>>>>> 961698b1369c8aae8de9fc786658e2e89ceca7de
  end

  def new
    @product = Product.new
    @photo = @product.build_photo
  end

<<<<<<< HEAD
=======
  def create
    @product = Product.new(product_params)

    if @product.save
      redirect_to admin_products_path
    else
      render :new
    end
  end

  def show
    @product = Product.find(params[:id])
  end

>>>>>>> 961698b1369c8aae8de9fc786658e2e89ceca7de
  def edit
    @product = Product.find(params[:id])

    if @product.photo.present?
      @photo = @product.photo
    else
      @photo = @product.build_photo
    end
  end

  def update
    @product = Product.find(params[:id])

    if @product.update(product_params)
      redirect_to admin_products_path
    else
      render :edit
    end
  end

<<<<<<< HEAD
  def create
    @product = Product.new(product_params)

    if @product.save
      redirect_to admin_products_path
    else
      render :new
    end
  end

=======
>>>>>>> 961698b1369c8aae8de9fc786658e2e89ceca7de
  private

  def product_params
    params.require(:product).permit(:title, :description, :quantity, :price, photo_attributes: [:image, :id])
  end
end
