class ShowsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :show ]

  def show
    @show = Show.find(params[:id])
    @featured_shows = Show.all.shuffle.first(5)
  end
end
