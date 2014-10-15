require_relative 'sprite_hana'

  class Sakurahubuki
    def initialize
      @hanas = []
			@num_hana = 30
      @num_hana.times { @hanas << Hana.new(rand(780), rand(600)) }
    end

	def play
      Sprite.draw(@hanas)
      Sprite.update(@hanas)
	end
	def make_hana
		@hanas << Hana.new(Input.mouse_pos_x / 2, Input.mouse_pos_y / 2)
		#p @hanas.size
		#print(Input.mouse_pos_x,",", Input.mouse_pos_y,"\n")
	end
end
