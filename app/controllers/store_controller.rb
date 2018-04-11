class StoreController < ApplicationController
  def index
      @user = current_user
  end

  def swordButton
  @user = current_user
  if @user.gold > (@user.sword * 150)
    @user.sword +=1
    @user.gold -= (@user.sword * 150)
    @user.save
     flash[:success] = "Upgraded Sword"
   else
     flash[:failure] = "You need more gold!"
  end
      redirect_to request.referrer
  end

  def spellbookButton
  @user = current_user
  if @user.gold > (@user.spellbook * 150)
    @user.spellbook +=1
    @user.gold -= (@user.spellbook * 150)
    @user.save
     flash[:success] = "Upgraded Sword"
   else
     flash[:failure] = "You need more gold!"
  end
      redirect_to request.referrer
  end

  def helmetButton
  @user = current_user
  if @user.gold > (@user.helmet * 150)
    @user.helmet +=1
    @user.gold -= (@user.helmet * 150)
    @user.save

     flash[:success] = "Upgraded Sword"
   else
     flash[:failure] = "You need more gold!"
  end
      redirect_to request.referrer
  end

  def shouldersButton
  @user = current_user
  if @user.gold > (@user.shoulders * 150)
    @user.shoulders +=1
    @user.gold -= (@user.shoulders * 150)
    @user.save

     flash[:success] = "Upgraded Sword"
   else
     flash[:failure] = "You need more gold!"
  end
      redirect_to request.referrer
  end

  def chestButton
  @user = current_user
  if @user.gold > (@user.chest * 150)
    @user.chest +=1
    @user.gold -= (@user.chest * 150)
    @user.save

     flash[:success] = "Upgraded Sword"
   else
     flash[:failure] = "You need more gold!"
  end
      redirect_to request.referrer
  end

  def glovesButton
  @user = current_user
  if @user.gold > (@user.gloves * 150)
    @user.gloves +=1
    @user.gold -= (@user.gloves * 150)
    @user.save

     flash[:success] = "Upgraded Sword"
   else
     flash[:failure] = "You need more gold!"
  end
      redirect_to request.referrer
  end

  def legsButton
  @user = current_user
  if @user.gold > (@user.legs * 150)
    @user.legs +=1
    @user.gold -= (@user.legs * 150)
    @user.save

     flash[:success] = "Upgraded Sword"
   else
     flash[:failure] = "You need more gold!"
  end
      redirect_to request.referrer
  end

  def bootsButton
  @user = current_user
  if @user.gold > (@user.boots * 150)
    @user.boots +=1
    @user.gold -= (@user.boots * 150)
    @user.save

     flash[:success] = "Upgraded Sword"
   else
     flash[:failure] = "You need more gold!"
  end
      redirect_to request.referrer
  end

end
