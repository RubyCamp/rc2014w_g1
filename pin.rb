class Pin < Sprite
	def initialize(x,　y,　image = nil)
		super
		self.image = Image.load("images/pin1_mini.png")
		image.set_color_key([0,0,0])
		
	end

	def update
    #
  	end
end