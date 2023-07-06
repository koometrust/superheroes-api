class HeroPowersController < ApplicationController
    def create
      hero_power = HeroPower.new(hero_power_params)
      if hero_power.save
        render json: hero_with_powers(hero_power.hero), status: :created
      else
        render json: { errors: hero_power.errors.full_messages }, status: :unprocessable_entity
      end
    end
  
    private
  
    def hero_power_params
      params.require(:hero_power).permit(:strength, :power_id, :hero_id)
    end
  
    def hero_with_powers(hero)
      {
        id: hero.id,
        name: hero.name,
        super_name: hero.super_name,
        powers: hero.powers
      }
    end
  end
  