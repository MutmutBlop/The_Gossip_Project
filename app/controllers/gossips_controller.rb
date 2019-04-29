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

end
