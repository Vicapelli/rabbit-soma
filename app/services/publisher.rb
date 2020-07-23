class Publisher
  def self.publish(exchange, dados = {})
    #pega o fanout exchange
    event = channel.fanout("soma.#{exchange}")
    #publish the message
    event.publish(dados.to_json)
  end

  #criação de um canal para o exchange e connection
  def self.channel
    @channel ||=connection.create_channel
  end

  #bunny.new cria um novo objeto do tipo bunny para iniciar a connection
  def self.connection
    @connection ||= Bunny.new.tap do |connect|
    connect.start
    end
  end
end