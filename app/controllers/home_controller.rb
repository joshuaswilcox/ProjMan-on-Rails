class HomeController < ApplicationController
  def index
    @projects = Project.all
    @groups = Group.all
    @tasks = Task.all
  end
end
