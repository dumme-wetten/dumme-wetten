class FriendshipsController < ApplicationController
  def index
    @accepted_friendships = current_user.friendships.where(status_id: Friendship::STATUS_ACCEPTED_REQUEST) + current_user.inverse_friendships.where(status_id: Friendship::STATUS_ACCEPTED_REQUEST)
    @open_friendships = current_user.friendships.where(status_id: Friendship::STATUS_NEW_REQUEST)
    @unresponse_friendships = current_user.inverse_friendships.where(status_id: Friendship::STATUS_NEW_REQUEST)
    @friendship = Friendship.new
  end

  def create
    Friendship.create(friendship_params.merge({ user_id: current_user.id }))
    redirect_to friendships_path
  end

  def friendship_params
    params.require(:friendship).permit(:friend_id)
  end
end
