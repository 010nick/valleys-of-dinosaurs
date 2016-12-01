class DinosaursController < ApplicationController
  def index
    @dinosaurs = Dinosaur.all
  end
  def show
    @dinosaur = Dinosaur.find(params[:id])
  end
  def new
    @dinosaur = Dinosaur.new
  end

  private

  def dinosaur_params
    params.require(:dinosaur).permit(:name, :age, :image_url)
  end
  def destroy
    @dinosaur = Dinosaur.find(params[:id])

    @dinosaur.destroy

    redirect_to dinosaurs_path
  end
end
end
