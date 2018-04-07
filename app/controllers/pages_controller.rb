class PagesController < ApplicationController
 def index
  @user = current_user
  @monsters = Monster.all
end
end
