class RoomLight
  def client
    @client ||= Switchbot::Client.new(Settings.switchbot.token)
  end

  def device
    client.device(Settings.switchbot.room_light_device_id)
  end

  def click
    device.commands(command: 'turnOn')
  end
end
