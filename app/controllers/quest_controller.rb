class QuestController < ApplicationController
  def index
      @user = current_user
  end
  def questButton
        @user = current_user
    @user.quest_complete = true
    @user.gold += 10000
    @user.xp += 100
    @user.quest_name = "Complete"
    @user.save
    redirect_to request.referrer
  end
  def newQuestButton
        @user = current_user
    @user.quest_complete = false
    @user.quest_name = "rat"
    @user.quest_num = 3
    @user.save
    redirect_to request.referrer
  end

end
