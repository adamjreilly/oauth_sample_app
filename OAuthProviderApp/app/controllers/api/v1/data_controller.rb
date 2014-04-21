class Api::V1::DataController < ApplicationController
  respond_to :json, :xml

  oauthenticate :interactive => false

  def show
    respond_with 'This is sensitive information'
  end
end
