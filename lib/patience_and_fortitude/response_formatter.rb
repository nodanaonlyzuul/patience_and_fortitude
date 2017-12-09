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
      fines_array = fines_response[:fines]
      table_data = []
      fines_array.each do |fine|
        table_row = {
          FINE: fine[:fineAmount],
          TITLE:  fine[:title]
        }
        table_data << table_row
      end
      Formatador.display_compact_table(table_data, [:FINE, :TITLE])
    end
  end
end
