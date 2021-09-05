class AlexasController < ApplicationController
  def create
    alexa = AlexaRuby.new(request.body.read)
    RoomLight.new.click
    AirConditioner.new.turn_on
    alexa.response.tell('おはようございます。朝の準備が出来ました。')
    render json: alexa.response.json
  end

  def destroy
    alexa = AlexaRuby.new(request.body.read)
    RoomLight.new.click
    AirConditioner.new.turn_off
    alexa.response.tell('おやすみなさい。電気消しておきました。')
    render json: alexa.response.json
  end

end
