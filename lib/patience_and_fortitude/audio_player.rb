module PatienceAndFortitude
  class AudioPlayer
    # For osx, ubuntu, raspbian respectively
    COMMANDS_TO_TRY = %w[afplay play omxplayer]

    def self.play(file_name)
      COMMANDS_TO_TRY.each do |command|
        if !`which #{command}`.empty?
           `#{command} #{File.join(File.dirname(__FILE__), '..', '..', 'resources', "#{file_name}.wav")} &`
          break
        end
      end
    end

  end
end
