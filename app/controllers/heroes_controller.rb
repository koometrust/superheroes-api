class HeroesController < ApplicationController
    def index
      heroes = Hero.all
      render json: heroes, status: :ok
    end
  
    def show
      hero = Hero.find_by(id: params[:id])
      if hero
        render json: hero_with_powers(hero), status: :ok
      else
        render json: { error: "Hero not found" }, status: :not_found
      end
    end
  
    private
  
    def hero_with_powers(hero)
      {
        id: hero.id,
        name: hero.name,
        super_name: hero.super_name,
        powers: hero.powers
      }
    end
  end
  