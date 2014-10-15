require_relative 'button'
require_relative 'sakurahubuki'

class Hiikawa < Scene
	attr_accessor :i
	attr_accessor :timer
	def initialize
		super
		name = ["scenes/hiikawa/images/sakura02_big.jpg","scenes/hiikawa/images/sakura01.jpg",
						"scenes/hiikawa/images/yozakura01.jpg","scenes/hiikawa/images/sakura04.jpg"]
		@bg_img = []
		name.size.times do |i|
			@bg_img[i] = Image.load( name[i] )
		end
		@alpha1 = 0
		@hash1 = {:alpha =>@alpha1,:scalex => 1.9,:scaley => 1.9}
		@timer = 12 * 60
		@i = 1
		@font1 = Font.new(33,"ＭＳ 明朝")
		@font_x = 0
		@font_y = 0
		@count = 0
		@btn = Button.new
		@hubuki = Sakurahubuki.new
		@sakurahubuki_sw = 0
		
	end

	def play
		@timer -= 1
		@count += 1
		if @count > 60 * 2
			@font_x -= 1.0
		end
		if @timer < 0 then
			case @i 
				when 0
					@timer = 18 * 60
					@sakurahubuki_sw = 0
				when 1
					@timer = 13 * 60
					@sakurahubuki_sw = 1
				when 2
					@timer = 12 * 60
					@sakurahubuki_sw = 0
				when 3
					@timer = 20 * 60
					@sakurahubuki_sw = 1
				when 4
					stop
			end
			@count = 0
			@i += 1	
			@font_x = 0
		end

		if @count < 255 then
			@hash1[:alpha] += 1
		end
		if @timer < 128
			@hash1[:alpha] -= 2
		end

		
		case @i
			when 1
				Window.draw(0,0,@bg_img[@i-1])
				Window.drawFont(@font_x+303,@font_y+499,"JR木次駅から徒歩1分にあります",@font1,hash={:color => C_BLACK,:alpha => @alpha1} )
				Window.drawFont(@font_x+300,@font_y+500,"JR木次駅から徒歩1分にあります",@font1,hash={:color => C_YELLOW,:alpha => @alpha1} )
				
	
			when 2
				Window.draw(0,0,@bg_img[@i-1])
				Window.drawFont(@font_x+283,@font_y+499,"美しい桜トンネルで桜吹雪をみる",@font1,hash={:color => C_BLACK,:alpha => @alpha1})
				Window.drawFont(@font_x+280,@font_y+500,"美しい桜トンネルで桜吹雪をみる",@font1,hash={:color => C_YELLOW,:alpha => @alpha1}) 
			when 3
				Window.draw(0,0 , @bg_img[@i-1])
				Window.drawFont(@font_x+303,@font_y+499,"酒を飲みながら楽しむ夜桜",@font1,color:C_BLACK)
				Window.drawFont(@font_x+300,@font_y+500,"酒を飲みながら楽しむ夜桜",@font1,color:C_WHITE)
			when 4
				Window.draw(0,0,@bg_img[@i-1])
				Window.drawFont(@font_x+303,@font_y+499,"木次桜祭り:3～4月頃に行われる",@font1,color:C_BLACK)
				Window.drawFont(@font_x+300,@font_y+500,"木次桜祭り:3～4月頃に行われる",@font1,color:C_WHITE)
		end

		@hubuki.play if @sakurahubuki_sw == 1	
		@hubuki.make_hana if Input.mousePush?(M_LBUTTON)
		
		@btn.mouse_check(self)
		@btn.draw
	end
end