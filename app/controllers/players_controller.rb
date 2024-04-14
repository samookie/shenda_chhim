class PlayersController < ApplicationController
    before_action :authenticate_player!, only: [:edit, :update]
    
    def show
        @player = current_player
    end

    def edit
        @player = current_player
    end
    def update
        @player = current_player
        if @player.update(player_params)
            redirect_to @player, notice: 'Profil mis à jour avec succès.'
        else
            render :edit
        end
    end

end