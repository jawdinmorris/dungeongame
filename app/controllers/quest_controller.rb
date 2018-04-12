class QuestController < ApplicationController
  def index
      @user = current_user
  end
  def questButton
    awardedXp = 400
    @user = current_user
    @user.quest_complete = true
    @user.gold += 10000
    @user.xp += 100
    @user.quest_name = "No Quest Active"
    xpNeeded = ((10 + @user.user_level) * 10) - @user.xp
    while awardedXp > 0
      xpNeeded = ((10 + @user.user_level) * 10) - @user.xp
    if awardedXp >= xpNeeded
      @user.user_level = 1 + @user.user_level
      @user.attack += 2
      @user.defence += 2
      @user.health += 10
      @user.accuracy += 0.2
      @user.evasion += 0.2
      @user.xp = 0
      awardedXp = awardedXp- xpNeeded
    else
      @user.xp = @user.xp + awardedXp
      awardedXp = 0
    end
  end
    @user.save
    redirect_to request.referrer
  end

  def newQuestButton
        @user = current_user
    @user.quest_complete = false
    monsters = Monster.where("level < ?", @user.user_level)
    @user.quest_name = monsters[rand(0..monsters.count)].name
    @user.quest_num = rand(3..10)
    @user.save
    redirect_to request.referrer
  end

end
