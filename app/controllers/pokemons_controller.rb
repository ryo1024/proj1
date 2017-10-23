class PokemonsController < ApplicationController
	def capture
		pokemon = Pokemon.find(params[:id])
		pokemon.trainer_id = current_trainer[:id]
		pokemon.save!
		redirect_to root_path
	end

	def damage
		@pokemon = Pokemon.find(params[:id])
		@pokemon.health =  @pokemon.health - 10
		@pokemon.save!
	    @pokemon.destroy! if @pokemon.health < 0
		redirect_to trainers_path
	end

	def new 
		@pokemon = Pokemon.new
		
	end

	def create
		@pokemon = Pokemon.new(name: params[:pokemon][:name])
		@pokemon.health = 100
		@pokemon.level = 1
		@pokemon.trainer_id = current_trainer[:id]
		@pokemon.save!
		redirect_to pokemons_new_path
	end

end