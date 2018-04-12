class QuestController < ApplicationController
  before_action :defineMonster, only: [:questButton]
  def index
      @user = current_user
  end
  def questButton
    awardedXp = (@monster.level * rand(3..10)) * 10
    @user = current_user
    @user.quest_complete = true
    @user.gold += (@monster.level * rand(3..10)) * 10
    @user.xp += awardedXp
    @user.quest_name = "No Quest Active"
    @user.quest_counter += 1
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
      awardedXp = awardedXp- xpNeeded
      @user.xp = 0

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
    monsters = Monster.where("level <= ?", @user.user_level)
    @user.quest_name = monsters[rand(0...monsters.count)].name
    @user.quest_num = rand(3..10)
    @permQuestNum = @user.quest_num
    @user.save
    redirect_to request.referrer
  end

 def defineMonster
   @user = current_user
   @monster = Monster.where(:name => @user.quest_name).first
 end
end
