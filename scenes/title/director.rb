class Director < Scene
  def initialize
    @title = Image.load("scenes/title/images/title.png")
    @chars = []
    25.times { @chars << Hana.new(rand(780), rand(600)) }
  end

  def play
		Window.draw(0, 0, @title)
    Sprite.update(@chars)
    Sprite.draw(@chars)
		stop if Input.keyPush?(K_ESCAPE)
		
  end
end