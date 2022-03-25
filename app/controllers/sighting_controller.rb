class SightingController < ApplicationController
    def index
        if params[:start_date] != nil && params[:end_date] != nil
            sightings_range = Sighting.where(date: params[:start_date]..params[:end_date])
            render json: sightings_range
        else
            sightings = Sighting.all
            render json: sightings
        end
    end
    def show
        one_sighting = Sighting.find(params[:id])
        render json: one_sighting
    end
    def create
        new_sighting= Sighting.create(sighting_params)
        if new_sighting.valid?
            render json: new_sighting
        else
            render json: new_sighting.errors
        end
    end
    def update
        one_sighting = Sighting.find(params[:id])
        one_sighting.update(sighting_params)
        if one_sighting.valid?
            render json: one_sighting
        else
            render json: one_sighting.errors
        end
    end
    def destroy
        one_sighting = Sighting.find(params[:id])
        if one_sighting.destroy
            render json: one_sighting
        else
            render json: one_sighting.errors
        end
    end
    def sighting_params
        params.require(:sighting).permit(:date,:longitude,:latitude,:animal_id)
    end
end
