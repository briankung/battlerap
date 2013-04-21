class BattlesController < ApplicationController
  respond_to :json

  def index
    if params[:user_id]
      @battles = Battle.where("user_id = ? OR friend_id = ?", params[:user_id], params[:user_id])
    else
      @battles = Battle.all
    end
    respond_with(@battles)
  end  
  
  def create
    @battle = Battle.new(params[:battle])
    if @battle.save
      respond_with(@battle)
    end
  end

  def show
    respond_with(@battle)
  end
end

__END__

{
  battle: {
    friend_handle: "something",
    user_id: "1111",
    category: "some category"
  }
}