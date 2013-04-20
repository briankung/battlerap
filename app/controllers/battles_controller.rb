class BattlesController < ApplicationController
  respond_to :json

  def index
    @battles = Battle.all
    respond_with(@battles)
  end  
  
  def create
    @friend = User.where(handle: params[:battle][:friend_handle]).first || User.create(handle: params[:battle][:friend_handle])
    @battle = Battle.new
    @battle.category = params[:battle][:category]
    @battle.user_id = params[:battle][:user_id]
    @battle.friend_id = @friend.id
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