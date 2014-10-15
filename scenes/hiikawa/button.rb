class Button
	def initialize
			@btn1 = Image.load("scenes/hiikawa/images/btn049_01.png")	#赤いボタン
			@btn2 = Image.load("scenes/hiikawa/images/btn049_06.png")	#青いボタン
			@font1 = Font.new(20)
			@font2 = Font.new(80)
			@timer = 60
			@check = 0
	end
		
	def draw
		Window.draw(0,0,@btn2,0)
		Window.drawFont(50,5,"前",@font1,color:C_BLACK)
		Window.draw(0,30,@btn1,0)
		Window.drawFont(50,35,"次",@font1,color:C_BLACK)
	end

	def mouse_check(hiikawa)
		
		@mouse_x = Input.mousePosX		# マウスカーソルのx座標
  	@mouse_y = Input.mousePosY		# マウスカーソルのy座標
		if @mouse_x > 0 && @mouse_y >0 && @mouse_x < 180 && @mouse_y <30 && Input.mousePush?(M_LBUTTON)
			@check = 1
		end 
		if @mouse_x > 0 && @mouse_y >30 && @mouse_x < 180 && @mouse_y <60 && Input.mousePush?(M_LBUTTON)
			@check = 2
		end 
		if @check == 1
			hiikawa.i -= 2
			hiikawa.i = -1 if hiikawa.i < -1
			hiikawa.timer = -1
			@check = 0
		end
		if @check == 2
			hiikawa.timer = -1
			@check = 0
		end
	
		#1秒間表示
		#if @check == 1 then
		#	@timer -= 1
		#	if @timer < 0 then
		#		@timer = 60
		#		@check = 0
		#	end
		#end

	end
end
		
