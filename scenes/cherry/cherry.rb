class Cherry < Scene
def initialize

	@image = []
	@image[0] = Image.load('scenes/cherry/images/image3.jpg')
	@image[1] = Image.load('scenes/cherry/images/image5.jpg')

	@font1 = Font.new(25) 
	@font2 = Font.new(50) 
	@font3 = Font.new(45) 
	@font4 = Font.new(30)
	@timer = 7 * 60
	@i = 0

	@alphaImg1 = 1
	@alphaImg2 = 2
	@alphaFont = 0
	@alphaFont = 0 
	@alphaSpeed = 0.1
end


def play
 		@timer -= 1
  	if @timer <= 0
  	  @i += 1
  	  @timer = 8 * 60
 	  end
  
  if @i == 0
	Window.drawAlpha(0,0,@image[0],@alphaImg1)
	Window.drawFont(104, 100,"～チェリーロード～", @font2,color:[0,0,0])
	Window.drawFont(100, 100,"～チェリーロード～",@font2,color:[255,102,204])
	Window.drawFont(450, 150,"from　松江市島根町加賀", @font1,color:[0,0,0])
	Window.drawFont(103.5, 450,"約700本の桜が約５Kｍに渡って咲き", @font1,color:[0,0,0])
	Window.drawFont(100, 450,"約700本の桜が約５Kｍに渡って咲き", @font1,color:[102,255,00])
	Window.drawFont(103.5, 490,"桜のトンネルとなっています", @font1,color:[0,0,0])
	Window.drawFont(100, 490,"桜のトンネルとなっています", @font1,color:[102,255,0])
           if @alphaImg1 < 255
	      			@alphaImg1 += 2
	  			 end
  end

  if @i == 1
  	Window.drawAlpha(0,0,@image[1],@alphaImg2)
	Window.drawFont(204, 270,"見どころ", @font2,color:[0,0,0])
	Window.drawFont(200, 270,"見どころ", @font2,color:[255,51,0])
	Window.drawFont(103, 340,"海、空、山、桜それぞれの色が調和し、島根半島の", @font1,color:[0,0,0])
	Window.drawFont(100, 340,"海、空、山、桜それぞれの色が調和し、島根半島の", @font1,color:C_CYAN)
	Window.drawFont(103, 380,"海岸線沿いを彩る、長い坂の桜のトンネル", @font1,color:[0,0,0])
	Window.drawFont(100, 380,"海岸線沿いを彩る、長い坂の桜のトンネル", @font1,color:C_CYAN)
	Window.drawFont(103, 460,"それが、チェリーロードです!", @font4,color:[0,0,0])
	Window.drawFont(100, 460,"それが、チェリーロードです!",@font4,color:C_CYAN)
	   if @alphaImg2 < 255
              @alphaImg2 += 1.3
	   end

  end

  if @i == 2
		Window.drawScale(0,0,@image[1],1,1,0,0)
		Window.drawFont(303, 450,"例年の見ごろ", @font4,color:[0,0,0])
		Window.drawFont(300, 450,"例年の見ごろ", @font4,color:[255,255,51])
		Window.drawFont(393, 490,"4月上旬", @font1,color:[0,0,0])
		Window.drawFont(390, 490,"4月上旬", @font1,color:[255,255,51])
		Window.drawFont(303, 370,"JR山陰本線「松江駅」よりバスで45分", @font1,color:[0,0,0])
		Window.drawFont(300, 370,"JR山陰本線「松江駅」よりバスで45分", @font1,color:[255,255,51])
		Window.drawFont(583, 410,"[佐波」下車", @font1,color:[0,0,0])
		Window.drawFont(580, 410,"[佐波」下車", @font1,color:[255,255,51])
		Window.drawFont(463, 540,"駐車場　無料 120台", @font1,color:[0,0,0])
		Window.drawFont(460, 540,"駐車場　無料 120台", @font1,color:[255,255,51])
		Window.drawFont(463, 570,"桜の種類　 ソメイヨシノ", @font1,color:[0,0,0])
		Window.drawFont(460, 570,"桜の種類　 ソメイヨシノ", @font1,color:[255,255,51])
	end
	if @i == 3
		stop
	end


#  if i == 3
#   Window.drawScale(0,0,image[2],0.565,0.45,0,0)
#  end

  #if i == 3
 #  Window.drawFont(100, 200, "produced", font1)  
 # end

  #if i == 2
  # Window.drawFont(100, 200, "produced by", font1) 
   #Window.drawFont(300, 300, "kura", font2) 
  #end
  #break if Input.keyPush?(K_ESCAPE)

  #Window.drawFont(400, 300, "kura", font)
	if @alphaSpeed < Math::PI
		@alphaSpeed += 0.01
		@alphaFont = 255 * Math.sin(@alphaSpeed).abs
	else
		@alphaSpeed = 0.1
	end
end
end