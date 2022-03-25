class AnimalController < ApplicationController
    def index
        animals = Animal.all
        render json: animals
    end
    def show
        one_animal = Animal.find(params[:id])
        render json: one_animal
    end
    def show_animal_sightings
        one_animal = Animal.find(params[:id])
        animal_sightings = one_animal.sightings.all
        render json: animal_sightings
    end
    def create
        new_animal = Animal.create(animal_params)
        if new_animal.valid?
            render json: new_animal
        else
            render json: new_animal.errors
        end
    end
    def update
        one_animal = Animal.find(params[:id])
        one_animal.update(animal_params)
        if one_animal.valid?
            render json: one_animal
        else
            render json: one_animal.errors
        end
    end
    def destroy
        one_animal = Animal.find(params[:id])
        if one_animal.destroy
            render json: one_animal
        else
            render json: one_animal.errors
        end
    end
    def animal_params
        params.require(:animal).permit(:common_name, :latin_name, :kingdom)
    end
end
