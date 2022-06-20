class UsersController < ApplicationController

  def show

    @user = User.find_by(id: params[:id])
    # 下記の方法でもうまくいく
    # @user = current_user

    # @post_images = @user.post_images
    @post_images = @user.post_images.page(params[:page])
    # @user.post_imagesの場合は、ユーザーが投稿した投稿画像を全て取得
    # ページネーション反映
  end


  def edit
    @user = User.find_by(id: params[:id])
  end

  def update
    @user = User.find_by(id: params[:id])
    @user.update(user_params)
    redirect_to user_path
  end

  private

  def user_params
    params.require(:user).permit(:name, :profile_image)
  end

end
