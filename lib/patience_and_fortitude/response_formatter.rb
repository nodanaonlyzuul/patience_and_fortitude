module PatienceAndFortitude
  class ResponseFormatter
    require 'rainbow'
    require 'formatador'

    def self.checkout_response_to_sentence(checkouts_response)
      checkouts_array = checkouts_response[:checkouts]

      table_data = []
      checkouts_array.each do |checkout|
        table_row = {
          TITLE: checkout[:title],
          DUE:   checkout[:dueDate].gsub('DUE ', '')
        }
        table_data << table_row
      end

      if table_data.empty?
        "You have nothing checked out. You should fix that.\nGo to https://nypl.org and take advantage of the world's greatest library."
      else
        Formatador.display_compact_table(table_data, [:TITLE, :DUE])
      end
    end

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

      if table_data.empty?
        "Sorry. You have no holds."
      else
        Formatador.display_compact_table(table_data, [:STATUS, :TITLE, :PICKUP_LOCATION])
      end

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

      if table_data.empty?
        "Mazel! You have no fines. You ARE fine. You're better than fine. Is...is this love?"
      else
        Formatador.display_compact_table(table_data, [:FINE, :TITLE])
      end
    end
  end
end
