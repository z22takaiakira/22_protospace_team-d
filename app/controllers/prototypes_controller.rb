class PrototypesController < ApplicationController
  before_action :set_prototype, only: [:show, :edit, :destroy, :update]

  def index
    @prototypes = Prototype.all.order(params[:page])
  end

  def new
    @prototype = Prototype.new
    @prototype.captured_images.build
  end

  def edit
  end

  def destroy
    @prototype.destroy
  end

  def update
    @prototype.update(prototype_params)
    redirect_to :root, notice: 'Your prototype was successfully updated'
  end

  def create
    @prototype = Prototype.new(prototype_params)
    if @prototype.save
      redirect_to :root, notice: 'New prototype was successfully created'
    else
      redirect_to ({ action: new }), alert: 'New prototype was unsuccessfully created'
     end
  end

  def show
  end

  private

  def set_prototype
    @prototype = Prototype.find(params[:id])
  end

  def prototype_params
    params.require(:prototype).permit(
      :title,
      :catch_copy,
      :concept,
      :user_id,
      captured_images_attributes: [:content, :status]
    )
  end
end
