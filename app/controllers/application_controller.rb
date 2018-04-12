class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

def configure_permitted_parameters
  devise_parameter_sanitizer.permit(:sign_up, keys: [:user_name, :health, :user_level, :xp, :attack, :defence, :accuracy, :evasion, :gold, :sword, :spellbook, :helmet, :shoulders, :gloves, :chest, :legs, :boots, :quest_name, :quest_num, :quest_complete])
end
end
