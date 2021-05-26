# frozen_string_literal: true

#= Controller for home page
class HomeController < ApplicationController
  respond_to :html
  layout 'home'

  def index
    campaign = Campaign.default_campaign_slug
    @presenter = CoursesPresenter.new(current_user: current_user, campaign_param: campaign)
  end
end
