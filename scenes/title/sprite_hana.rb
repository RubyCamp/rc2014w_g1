class Hana < Sprite
  def initialize(x, y, image = nil)
    super
    self.image = image || Image.load("scenes/title/images/skr.png")
		@count = rand(90)
		@plus = rand / 50
    @speed = 0.05
    @boost = rand(50)+10 
  end

  def update
	@count += @plus
    self.x += 5 * Math.sin(@count) + rand(4)-2.5
	self.y += @speed * @boost
	if self.y > 600 then
		self.y = 0
		self.x = rand(780)
	end
  end

  def draw
	Window.drawScale(self.x,self.y ,self.image ,0.05,0.05,self.x,self.y)
  end
end
