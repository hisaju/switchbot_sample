class AlexasController < ApplicationController
  def index
    alexa = AlexaRuby.new(request.body.read)
    RoomLight.new.click
    AirConditioner.new.turn_on
    alexa.response.tell('おはようございます。朝の準備が出来ました。')
    render json: alexa.response.json
  end
end
