require 'dxruby'

class PlayMusic
	def initialize
		@bgm = Sound.new("music/sakura.mid")
	end

	def play
		@bgm.play
	end
end