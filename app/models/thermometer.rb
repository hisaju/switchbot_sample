class Thermometer
  include ActiveModel::Model
  include ActiveModel::Attributes

  attribute :temperature, :decimal
  attribute :humidity, :integer

  def initialize
    super
    ret = device.status
    self.temperature = ret[:body][:temperature]
    self.humidity = ret[:body][:humidity]
  end

  def client
    @client ||= Switchbot::Client.new(Settings.switchbot.token)
  end

  def device
    client.device(Settings.switchbot.thermometer_device_id)
  end

end
