class LiqController < ApplicationController
  def show 
    @Waters = Waters.find_by(id: params['id'])
    @user = User.find_by(id: @Waters.user_id)
    render 'show'
  end
  
  def new
  end

  def create
    @Waters = Waters.new
    @Waters.caption = params['caption']
    @Waters.name = params['name']
    @Waters.url = params['url']
    @Waters.user_id = params['user_id']
    if @Waters.save
      redirect_to "/Water/#{ @Waters.id }"
    else
      render 'new'
    end
  end
  
  def edit
    @Waters = Waters.find_by(id: params['id'])
  end
  

  def update
    @Waters = Waters.find_by(id: params['id'])
    @Waters.caption = params['caption']
    @Waters.name = params['name']
    @Waters.url = params['url']
    @Waters.user_id = params['user_id']
    if @Waters.save
      redirect_to "/Water/#{ @Waters.id }"
    else
      render 'edit'
    end
  end
  
  def destroy
    @Waters = Waters.find_by(id: params['id'])
    @Waters.destroy
    redirect_to "/Water"
  end
  
  def index
    @Waters = Waters.all
  end
end