class HomesController < ApplicationController
  before_action :set_home, only: [:show, :edit, :update, :destroy]
  # require 'rubygems'
  require 'nokogiri'
  require 'open-uri'
  # require 'restclient'

  def index
    @homes = Home.all
    @MLBteams = Nokogiri::HTML(open("https://www.sportsbook.ag/sbk/sportsbook4/mlb-betting/mlb-game-lines.sbk")).css("span[class='team-title']")
    @MLBmoney = Nokogiri::HTML(open("https://www.sportsbook.ag/sbk/sportsbook4/mlb-betting/mlb-game-lines.sbk")).css("div[class='market']")
    @GamesNumber = @MLBteams.size / 2
    #@MLBteams.css("div[class='team-title']").size
    # @MLBteams.css("div[class='team-title']")[0].text
#    respond_with(@homes)
  end

  def show
    respond_with(@home)
  end

  def new
    @home = Home.new
    respond_with(@home)
  end

  def edit
  end

  def create
    @home = Home.new(home_params)
    @home.save
    respond_with(@home)
  end

  def update
    @home.update(home_params)
    respond_with(@home)
  end

  def destroy
    @home.destroy
    respond_with(@home)
  end

  private
    def set_home
      @home = Home.find(params[:id])
    end

    def home_params
      params[:home]
    end
end
