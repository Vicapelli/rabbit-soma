require "bunny"

module Publisher
  class Sender
    
    def self.publish(params)
      
    #inicia o bunny
        conn = Bunny.new
        conn.start

        #abre o canal
        ch = conn.create_channel


        q = ch.queue("soma")

        body = {
          first_number: params.num1.to_i,
          second_number: params.num2.to_i
        }

        q.publish(body.to_json)

        conn.stop
    end
  end
end