require "bunny"

module Publisher
  class Sender
    
    def self.publish(params)
      
    #inicia o bunny
        conn = Bunny.new
        conn.start

        #abre o canal
        ch = conn.create_channel


        a = ch.queue("soma")
        b = ch.queue("soma")

        a.publish(params.num1.to_s)
        b.publish(params.num2.to_s)


        conn.stop
    end
  end
end