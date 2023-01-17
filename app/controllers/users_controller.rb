class UsersController < ApplicationController

def show
  @author = current_user
end
  
end
