module PatienceAndFortitude
  class ResponseFormatter
    require 'rainbow'
    require 'formatador'

    def self.holds_response_to_sentence(holds_response)
      holds_array = holds_response[:holds]

      table_data = []
      holds_array.each do |hold|
        table_row = {
          :STATUS => hold[:statusString],
          :TITLE  => hold[:title],
          :PICKUP_LOCATION => hold[:pickupLocation]
        }
        table_data << table_row
      end

      Formatador.display_compact_table(table_data, [:STATUS, :TITLE, :PICKUP_LOCATION])
    end

    def self.fines_response_to_sentence(fines_response)
      table_data = [
        {:fine_amount => "$2.03", :title => "Zen and the Art of Motorcycle Maintenance",:due_since => "2017-11-13"},
        {:fine_amount => "$1.50", :title => "Half Asleep in Frog Pajamas", :due_since => "2017-12-01"},
        {:fine_amount => "$3.50", :title => "Modern Web Development With Apache Struts", :due_since => "2017-10-05"}
      ]

      Formatador.display_compact_table(table_data, [:fine_amount, :title, :due_since])
    end
  end
end
