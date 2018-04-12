class MonstersController < ApplicationController
  before_action :authenticate_user!
  before_action :set_monster, only: [:show, :edit, :update, :destroy]
  before_action :set_user
  # GET /monsters
  # GET /monsters.json
  def index

    @monsters = Monster.all
  end

  # GET /monsters/1
  # GET /monsters/1.json
  def show
    @user = current_user
    @monsters = Monster.all
  end

  # GET /monsters/new
  def new
    @monster = Monster.new
  end

  # GET /monsters/1/edit
  def edit
  end

  # POST /monsters
  # POST /monsters.json
  def create
    @monster = Monster.new(monster_params)

    respond_to do |format|
      if @monster.save
        format.html { redirect_to @monster, notice: 'Monster was successfully created.' }
        format.json { render :show, status: :created, location: @monster }
      else
        format.html { render :new }
        format.json { render json: @monster.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /monsters/1
  # PATCH/PUT /monsters/1.json
  def update
    respond_to do |format|
      if @monster.update(monster_params)
        format.html { redirect_to @monster, notice: 'Monster was successfully updated.' }
        format.json { render :show, status: :ok, location: @monster }
      else
        format.html { render :edit }
        format.json { render json: @monster.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /monsters/1
  # DELETE /monsters/1.json
  def destroy
    @monster.destroy
    respond_to do |format|
      format.html { redirect_to monsters_url, notice: 'Monster was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

 def collectLootAndBattleButton
   collectLootButton
    redirect_to request.referrer
 end

 def collectLootAndLeaveButton
   collectLootButton
    redirect_to monsters_path
 end
 def collectLootAndQuestButton
   collectLootButton
    redirect_to quest_index_path
 end

  def collectLootButton
    vars = Rails.application.routes.recognize_path(request.referrer)
    @monster = Monster.find(vars[:id])
    xpNeeded = ((10 + @user.user_level) * 10) - @user.xp
    @user.gold = @user.gold + @monster.gold_given
    @user.xp = @user.xp + @monster.xp_given
    if @user.quest_name.downcase == @monster.name.downcase && @user.quest_num > 0
     @user.quest_num -=1
   end
     if @monster.xp_given >= xpNeeded
       @user.user_level = 1 + @user.user_level
       @user.attack += 2
       @user.defence += 2
       @user.health += 10
       @user.accuracy += 0.2
       @user.evasion += 0.2
       @user.xp = 0 + (@monster.xp_given - xpNeeded)
     end
     @user.save

  end

  def battleMonster
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_monster
      @monster = Monster.find(params[:id])
    end
    def set_user
      @user = current_user
    end
    # Never trust parameters from the scary internet, only allow the white list through.
    def monster_params
      params.require(:monster).permit(:name, :level, :attack, :defence, :health, :description, :xp_given, :gold_given)
    end
end
