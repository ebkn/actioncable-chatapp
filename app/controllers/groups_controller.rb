class GroupsController < ApplicationController
  def show
    @messages = Message.all
  end
end
