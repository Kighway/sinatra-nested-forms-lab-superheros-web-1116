require 'sinatra/base'

class App < Sinatra::Base

  set :views, Proc.new { File.join(root, "../views/") }

  get "/" do
    erb :super_hero
  end

  post "/team" do
    @team = Team.new(params["team"])
    params["team"]["heroes"].each do |hero_options|
      @team.add_hero(Hero.new(hero_options))
    end
    # binding.pry
    erb :team
  end

end
