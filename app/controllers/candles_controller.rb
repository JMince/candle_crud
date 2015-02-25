class CandlesController < ApplicationController


        def index
          @candles = Candle.all
        end


        def new
          @candle = Candle.new
        end


        def create
          @candle = Candle.new(candle_params)
          if @candle.save
            flash[:notice] = "Candle was successfully created"
            redirect_to candles_path
          else
            render :new
          end
        end


        def show
          @candle = Candle.find(params[:id])
        end


        def edit
          @candle = Candle.find(params[:id])
        end


        def update
          @candle = Candle.find(params[:id])
          if @candle.update(candle_params)
            flash[:notice] = "Candle was successfully updated"
            redirect_to candles_path
          else
            render :edit
          end
        end


        def destroy
          Candle.destroy(params[:id])
          flash[:notice] = "Candle was successfully destroyed"
          redirect_to candles_path
        end


        private

        def candle_params
        params.require(:candle).permit(:color, :scent, :cost)
      end









end
