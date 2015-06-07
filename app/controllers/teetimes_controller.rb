class TeetimesController < ApplicationController

    before_filter :authorize


    def index
      @teetimes = Teetime.all
    end

    def show
      @teetime = Teetime.find(params[:id])

    end

    def new
      @teetime = Teetime.new
    end

    def create
      @teetime = Teetime.new(teetime_params)


      if @teetime.save
        redirect_to teetimes_path, :alert => "Teetime made"
      else
        render "new"
      end
    end

    def edit
      @teetime = Teetime.find(params[:id])

    end

    def update
      @teetime = Teetime.find(params[:id])

      if @teetime.update_attributes(teetime_params)
        redirect_to teetimes_path, :alert => "Teetime changed!"
      else
        render "edit"
      end
    end

    def destroy
      @teetime = Teetime.find(params[:id])
      @teetime.destroy

      redirect_to teetimes_path

    end

    private
    def teetime_params
      params.require(:teetime).permit(:date, :course)
    end


end
