# encoding: utf-8

require 'dxruby'

require_relative 'pin'
require_relative 'scene'
require_relative 'music'

require_relative 'scenes/title/director'
require_relative 'scenes/matsue/matsue'
require_relative 'scenes/hiikawa/hiikawa'
require_relative 'scenes/tama/tama'
require_relative 'scenes/cherry/cherry'

Window.caption = "島根県桜"

Window.width   = 800
Window.height  = 600

tamayugawa = Font.new(30) 
cherry_road = Font.new(30) 
matsuejou  = Font.new(30)
hiikawa =  Font.new(30)

pre_x = 10
pre_y = 10

title_scene = Director.new
title_scene.start
hiikawa_scene = Hiikawa.new
matsue_scene = Matsue.new
tama_scene = Tama.new
cherry_scene = Cherry.new

bgm = PlayMusic.new

bg_img = Image.load("images/sakura.png")
shimane_map =  Image.load("images/shimanemap.png") 
# いまマウスで掴んでるオブジェクト
item = nil

# ピンの配列を生成
pin1 = Pin.new(640,210)
pin2 = Pin.new(680,165)
pin3 = Pin.new(610,230) 
pin4 = Pin.new(660,190)
pin5 = Pin.new(311,341)
pin6 = Pin.new(298,367)
pin7 = Pin.new(253,392)
pin8 = Pin.new(183,419)
pin_arr = [pin1,pin2,pin3,pin4,pin5,pin6,pin7,pin8]

# プレビュー用の画像の配列を生成

pre1 = Image.load("images/tamayu.jpg")
pre2 = Image.load("images/image1.jpg")
pre3 = Image.load("images/sakura02.jpg")
pre4 = Image.load("images/matsuejou1.png")
prenoimg = Image.load("images/noimage.png")

pre_arr = [pre1,pre2,pre3,pre4,prenoimg]


#衝突判定用プログラム
mouse = Sprite.new
mouse.collision = [0,0]

bgm.play
Window.loop do
  if title_scene.running?
		title_scene.play
		next
	elsif hiikawa_scene.running? 
    hiikawa_scene.play
		next
	elsif matsue_scene.running?
		matsue_scene.play
		next
	elsif tama_scene.running?
		tama_scene.play
		next
	elsif cherry_scene.running?
		cherry_scene.play
		next
	end
	
  Window.drawScale(0, 0, bg_img, 1.0, 1.0, 0, 0)
  Window.drawScale(0, 0, shimane_map, 1.0, 0.6, 0, 0)
  
  # Window.drawScale(0, 0, bg_img, 0.7, 0.47, 0, 0)
  # puts arr.inspect
  # puts arr.map(&:image).inspect
  #pin1.draw
  # Sprite.update(arr)
  Sprite.draw(pin_arr)




  oldx, oldy = mouse.x, mouse.y
  mouse.x, mouse.y = Input.mouse_pos_x, Input.mouse_pos_y

#	print(mouse.x-15,",",mouse.y-54,"\n") if Input.mousePush?(M_LBUTTON)

  pin_arr.each_with_index do |obj,id|
    if mouse === obj
     
      if id == 0
        Window.drawScale(pre_x, pre_y, pre_arr[0], 0.5, 0.45, 0, 0) 
        Window.drawFont(170, 300, "玉湯川", tamayugawa, { color: [0, 0, 0] })  
        
      elsif id == 1 
        Window.drawScale(pre_x, pre_y, pre_arr[1], 0.5, 0.45, 0, 0) 
        Window.drawFont(120, 300, "チェリーロード", cherry_road , { color: [0, 0, 0] })      
        
      elsif id == 2
        Window.drawScale(pre_x, pre_y, pre_arr[2], 0.5, 0.45, 0, 0) 
        Window.drawFont(100, 300, "斐伊川堤防桜並木", hiikawa , { color: [0, 0, 0] })   
        
      elsif id == 3
        Window.drawScale(pre_x, pre_y, pre_arr[3], 0.5, 0.45, 0, 0) 
        Window.drawFont(110, 300, "松江城山公園", matsuejou , { color: [0, 0, 0] }) 
			elsif id == 4 || id == 5 || id == 6 || id == 7 || id == 8
        Window.drawScale(pre_x, pre_y, pre_arr[4], 0.5, 0.45, 0, 0) 
        Window.drawFont(110, 300, "????????????", matsuejou , { color: [0, 0, 0] }) 
				
      end
      break
    end
  end

  # ボタンを押したら判定
  if Input.mouse_push?(M_LBUTTON) 
  pin_arr.each_with_index do |obj,id|
      if mouse === obj
          if id == 0
						 tama_scene = Tama.new
             tama_scene.start
             #puts "aa" 
          elsif id == 1 
             cherry_scene = Cherry.new
             cherry_scene.start
             #puts "bb"
        
          elsif id == 2
						 hiikawa_scene = Hiikawa.new
             hiikawa_scene.start
        
          elsif id == 3
             matsue_scene = Matsue.new
             matsue_scene.start
          
          end
        break
      end
    end
  end

end
