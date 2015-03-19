class UserBetsController < ApplicationController
  before_action :set_user_bet, only: [:show, :edit, :update, :destroy]

  def index
    @user_bets = UserBet.all
    respond_with(@user_bets)
  end

  def show
    respond_with(@user_bet)
  end

  def new
    @user_bet = UserBet.new
    respond_with(@user_bet)
  end

  def edit
  end

  def create
    @user_bet = UserBet.new(user_bet_params)
    @user_bet.save
    respond_with(@user_bet)
  end

  def update
    @user_bet.update(user_bet_params)
    respond_with(@user_bet)
  end

  def destroy
    @user_bet.destroy
    respond_with(@user_bet)
  end

  private
    def set_user_bet
      @user_bet = UserBet.find(params[:id])
    end

    def user_bet_params
      params.require(:user_bet).permit(:wager, :game_id, :team_name)
    end
end
