class GossipsController < ApplicationController

  def show
    @gossip = Gossip.find(params[:id])
  end

  def new
    @gossip = Gossip.new
  end

  def create

    @gossip = Gossip.new(title:params[:title], content:params[:content], user_id:170) # avec xxx qui sont les données obtenues à partir du formulaire

    if @gossip.save # essaie de sauvegarder en base @gossip
      redirect_to '/'

      # si ça marche, il redirige vers la page d'index du site
    else
      # sinon, il render la view new (qui est celle sur laquelle on est déjà)
      render 'new'
    end

  end

end
