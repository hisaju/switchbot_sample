class AirConditioner
  def client
    @client ||= Switchbot::Client.new(Settings.switchbot.token)
  end

  def device
    client.device(Settings.switchbot.air_conditioner_device_id)
  end

  def turn_off
    device.commands(command: 'turnOff')
  end

  def turn_on
    device.commands(command: 'turnOn')
  end
end
