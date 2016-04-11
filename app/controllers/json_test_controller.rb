require 'json'

class JsonTestController < ApplicationController
  def ip
    render json: { ip: request.remote_ip }
  end

  def headers
    render json: request.env.select { |key, val| key.upcase == key }
  end

  def date
    render json: { date: Time.zone.now.to_s(:rfc822) }
  end

  def echo
    render json: Hash[*params[:echo_params].split('/')]
  rescue ArgumentError
    render json: 'Key Value pairs must be even'
  end

  def md5
    render json: { md5: Digest::MD5.hexdigest(params[:text].to_s) }
  end
end
