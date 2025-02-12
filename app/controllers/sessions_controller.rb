class SessionsController < ApplicationController
   skip_before_action :require_valid_user!, except: [:destroy], raise: false
 
   def new
   end
   
  
   
   def create
     reset_session
     @user = User.find_by(username: session_params[:username])
 
     if @user && @user.authenticate(session_params[:password])
       session[:user_id] = @user.id
       flash[:success] = 'Welcome back!'
       redirect_to twitters_path
     else
       flash[:error] = 'Invalid username/password combination'
       redirect_to login_path
     end
   end
 
   def destroy
     reset_session
           redirect_to login_path
 
   end
 
   def session_params
     params.require(:session).permit(:username, :password)
   end
 end