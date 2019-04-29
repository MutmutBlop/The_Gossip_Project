require 'gossip'

class GossipsController < ApplicationController

  def home
    @all_gossips = Gossip.all
  end

  def team
  end

  def contact
  end

  def welcome
  end

  def gossip
    @gossip = Gossip.find(params[:id])
  end

  def author
    @author = User.find(params[:id])
  end

end
