#encording:utf8
require 'dxruby'

class Tama < Scene
   def initialize
     @bg_Img1 = Image.load("scenes/tama/image/tamayugawa1.jpg")
     @bg_Img2 = Image.load("scenes/tama/image/tamayugawa2.jpg")
     @bg_Img3 = Image.load("scenes/tama/image/tamayugawa3.jpg")
     @bg_Img4 = Image.load("scenes/tama/image/tamayugawa4.jpg")
     @bg_Img5 = Image.load("scenes/tama/image/tamayugawa5.jpg")
     @bg_Img6 = Image.load("scenes/tama/image/tamayugawa6.jpg")
     @bg_Img7 = Image.load("scenes/tama/image/tamayugawa7.jpg")
     @alphaImg1 = 255
     @alphaImg2 = 1
     @alphaImg3 = 255
     @alphaFont1 = 0
     @alphaFont2 = 0
     @alphaFont3 = 0
     @alphaFont4 = 0
     @alphaFont5 = 0
     @alphaFont6 = 0
     @alphaFont7 = 0
     @alphaFont8 = 0
     @alphaFont9 = 0
     @alphaSpeed1 = 0
     @alphaSpeed2 = 0
     @alphaSpeed3 = 0
     @alphaSpeed4 = 0
     @alphaSpeed5 = 0
     @alphaSpeed6 = 0
     @alphaSpeed7 = 0
     @alphaSpeed8 = 0
     @alphaSpeed9 = 0
     @timer = 0
     @font1 = Font.new(40, fontname = "ＭＳ 明朝")
     @font2 = Font.new(30, fontname = "ＭＳ 明朝")
     @font3 = Font.new(31, fontname = "ＭＳ 明朝")
     @image1_x = 0
     @image2_x = 800
     @image3_x = 800
     @image4_x = 800
     @image5_x = 800
     @image6_x = 800
     @image7_x = 800
     @font1_x = 450
     @font2_x = 800
   end

   def play
	@timer += 1

          if @timer < 5 * 60
              Window.drawScale(0, 0,@bg_Img1,1 ,1,0,0)
              Window.drawFont(@font1_x,450, "玉湯川堤の桜並木", @font1, hash1={:alpha => @alphaFont1,:shadow_edge => @true})
              Window.drawFont(@font1_x+1,451, "玉湯川堤の", @font1, hash1={:alpha => @alphaFont1,:color => [255,255,255]})
              Window.drawFont(@font1_x+204,454, "桜並木", @font1, hash1={:alpha => @alphaFont1,:color => [239,117,152]})
              Window.drawFont(@font1_x+201,451, "桜並木", @font1, hash1={:alpha => @alphaFont1,:color => [255,255,255]})
	        if @alphaSpeed1 < Math::PI
 	            @alphaSpeed1 += 0.005
		    @alphaFont1 = 255 * Math.sin(@alphaSpeed1).abs
		end
          end

          if @timer > 5 * 60 && @timer <= 8 * 60 #2枚目
              Window.drawScale(@image1_x, 0,@bg_Img1,1 ,1,0,0)
              Window.drawScale(@image2_x, 0,@bg_Img2,1 ,1,0,0)
              Window.drawFont(@font1_x+204,454, "桜並木", @font1, hash1={:alpha => @alphaFont1,:color => [239,117,152]})
              Window.drawFont(@font1_x,450, "玉湯川堤の桜並木", @font1, hash1={:alpha => @alphaFont1})
              
               if @image1_x <= 0 && @image2_x > 0 
                  @image1_x += -6
                  @image2_x += -6
                  @font1_x += -6
	       end
          end
          if @timer > 8 * 60 && @timer < 12 * 60
              Window.drawScale(@image2_x, 0,@bg_Img2,1,1,0,0)
              Window.drawFont(250,450, "玉造温泉街を流れる玉湯川の両岸約2km", @font2,hash1={:alpha => @alphaFont2})
	      Window.drawFont(250,500, "約400本のソメイヨシノが一斉に咲き", @font2,hash1={:alpha => @alphaFont2})
	      Window.drawFont(250,550, "桜色の景色が約2kmもの長さで続く。", @font2,hash1={:alpha => @alphaFont2})
              Window.drawFont(251,450, "玉造温泉街を流れる玉湯川の両岸約2km", @font2,hash1={:alpha => @alphaFont2,:color => [255,255,255]})
              Window.drawFont(251,500, "約400本の", @font2,hash1={:alpha => @alphaFont2})
              Window.drawFont(390,504, "ソメイヨシノ", @font2,hash1={:alpha => @alphaFont2,:color => [239,117,152]})
              Window.drawFont(386,501, "ソメイヨシノ", @font2,hash1={:alpha => @alphaFont2})
	      Window.drawFont(566,500, "が一斉に咲き", @font2,hash1={:alpha => @alphaFont2,:color => [255,255,255]})
	      Window.drawFont(251,550, "桜色の景色が約2kmもの長さで続く。", @font2,hash1={:alpha => @alphaFont2,:color => [255,255,255]})
	        if @alphaSpeed2 < Math::PI
 	            @alphaSpeed2 += 0.015
		    @alphaFont2 = 255 * Math.sin(@alphaSpeed2).abs
		end
          end 

          if @timer > 12 * 60 && @timer <= 15 * 60#2枚目
              Window.drawScale(@image2_x, 0,@bg_Img2,1 ,1,0,0)
              Window.drawScale(@image3_x, 0,@bg_Img3,1 ,1,0,0)
               if @image2_x <= 0 && @image3_x > 0 
                  @image2_x += -6
                  @image3_x += -6
	       end
          end
          if @timer > 14.3 * 60 && @timer < 19 * 60
              if @timer > 15 * 60 
                 Window.drawScale(@image3_x, 0,@bg_Img3,1 ,1,0,0)
              end
              Window.drawFont(240,20, "温泉街散策で疲れた後は", @font2, hash1={:alpha => @alphaFont3})
	      Window.drawFont(330,60, "おしゃべりに花を咲かせながら", @font2, hash1={:alpha => @alphaFont3})
	      Window.drawFont(430,100, "足湯を楽しむことができる。", @font2, hash1={:alpha => @alphaFont3})
              Window.drawFont(241,21, "温泉街散策で疲れた後は", @font2, hash1={:alpha => @alphaFont3})
              Window.drawFont(331,61, "おしゃべりに", @font2, hash1={:alpha => @alphaFont3})
              Window.drawFont(514,64, "花", @font2, hash1={:alpha => @alphaFont3,:color => [239,117,152]})
              Window.drawFont(511,61, "花", @font2, hash1={:alpha => @alphaFont3})
              Window.drawFont(541,61, "を咲かせながら", @font2, hash1={:alpha => @alphaFont3})
	      Window.drawFont(431,101, "足湯を楽しむことができる。", @font2, hash1={:alpha => @alphaFont3})
	      if @alphaSpeed3 < Math::PI && @timer <= 18 * 60
 	         @alphaSpeed3 += 0.01
  	         @alphaFont3 = 255 * Math.sin(@alphaSpeed3).abs
	      end

              if @timer > 18 * 60 && @alphaFont3 > 1
                 @alphaSpeed3 += 0.015
  	         @alphaFont3 = 255 * Math.sin(@alphaSpeed3).abs
              end
          end

          if @timer > 19 * 60 && @timer <= 22 * 60#3枚目
              Window.drawScale(@image3_x, 0,@bg_Img3,1 ,1,0,0)
              Window.drawScale(@image4_x, 0,@bg_Img4,1 ,1,0,0)
               if @image3_x <= 0 && @image4_x > 0
                  @image3_x += -6
                  @image4_x += -6
	       end
          end

          if @timer > 22 * 60 && @timer < 32 * 60 
             if @alphaImg1 > 0
		 Window.drawAlpha(0, 0, @bg_Img4, @alphaImg1)
                 Window.drawFont(50,60, "玉湯川沿い", @font2, hash1={:alpha => @alphaFont4})
                 Window.drawFont(120,100, "約400本の桜並木の一部を", @font2, hash1={:alpha => @alphaFont4})
  		 Window.drawFont(340,140, "ライトアップ", @font1, hash1={:alpha => @alphaFont4})
                 Window.drawFont(51,61, "玉湯川沿い", @font2, hash1={:alpha => @alphaFont4})
                 Window.drawFont(121,101, "約400本の桜並木の一部を", @font2, hash1={:alpha => @alphaFont4})
  		 Window.drawFont(342,142, "ライトアップ", @font1, hash1={:alpha => @alphaFont4,:color => [255,20,0]})

  		   if @timer > 22 * 60 && @alphaSpeed4 < Math::PI
		      @alphaSpeed4 += 0.01
		      @alphaFont4 = 255 * Math.sin(@alphaSpeed4).abs
		   end
		   if @timer > 26 * 60
		      @alphaImg1 += -0.7
		   end
	     end

	     if @timer > 26 * 60 && @alphaImg2 > 0
		Window.drawAlpha(0, 0, @bg_Img5, @alphaImg2)		
		Window.drawFont(220, 30, "ライトアップされた桜並木", @font2, hash1={:alpha => @alphaFont5})		
		Window.drawFont(140, 70, "やわらかい光に照らされる桜を楽しめる。", @font2, hash1={:alpha => @alphaFont5})
                Window.drawFont(221, 31, "ライトアップ", @font2, hash1={:alpha => @alphaFont5,:color => [255,0,0]})
                Window.drawFont(401, 31, "された桜並木", @font2, hash1={:alpha => @alphaFont5})		
		Window.drawFont(141, 71, "やわらかい光に照らされる桜を楽しめる。", @font2, hash1={:alpha => @alphaFont5})		
		#Window.drawFont(141, 71, "やわらかい光に照らされる桜を楽しめる。", @font2, hash1={:alpha => @alphaFont5})
		 if @timer > 26 * 60 && @alphaSpeed5 < 2 * Math::PI
	 	    @alphaSpeed5 += 0.005
		    @alphaFont5 = 255 * Math.sin(@alphaSpeed5).abs
		 end
		 if @alphaImg2 < 255 && @timer <= 30 * 60
		    @alphaImg2 += 1
		 end
		 if @timer > 30 * 60 && @alphaImg2 > 0 
		    @alphaImg2 += -1
                    @alphaSpeed5 += 0.005
                    @alphaFont5 = 255 * Math.sin(@alphaSpeed5).abs
		 end
	     end
          end

          if @timer > 30 * 60 && @timer <= 34 * 60  #7枚目
              Window.drawScale(@image5_x, 0,@bg_Img5,1,1,0,0)
              Window.drawScale(@image6_x, 0,@bg_Img6,1,1,0,0)
               if @alphaImg2 > 0
                  Window.drawAlpha(0, 0, @bg_Img5, @alphaImg2)
                  @alphaImg2 += -1
               end
               if @alphaSpeed5 < Math::PI                  		
		  Window.drawFont(220, 30, "ライトアップされた桜並木", @font2, hash1={:alpha => @alphaFont5})
                  Window.drawFont(221, 31, "ライトアップ", @font2, hash1={:alpha => @alphaFont5,:color => [255,0,0]})		
		  Window.drawFont(140, 70, "やわらかい光に照らされる桜を楽しめる。", @font2, hash1={:alpha => @alphaFont5})
                  @alphaSpeed5 += 0.007
	          @alphaFont5 = 255 * Math.sin(@alphaSpeed5).abs
               end
               if @image6_x > 0
                  @image6_x += -6
	       end
          end

          if @timer > 34 * 60 && @timer < 38 * 60
             Window.drawScale(@image6_x, 0,@bg_Img6,1,1,0,0)
              Window.drawFont(40, 40, "幻想的な夜桜見物を", @font2, hash1={:alpha => @alphaFont6})
              Window.drawFont(90, 80, "楽しむことができる。", @font2, hash1={:alpha => @alphaFont6})
              Window.drawFont(163, 43, "夜桜", @font2, hash1={:alpha => @alphaFont6,:color => [239,117,152]})
              Window.drawFont(41, 41, "幻想的な夜桜見物を", @font2, hash1={:alpha => @alphaFont6})
              Window.drawFont(91, 81, "楽しむことができる。", @font2, hash1={:alpha => @alphaFont6})
	        if @alphaSpeed6 < Math::PI
 	            @alphaSpeed6 += 0.015
		    @alphaFont6 = 255 * Math.sin(@alphaSpeed6).abs
		end
          end

          if @timer > 38 * 60 && @timer <= 42 * 60  #7枚目
              Window.drawScale(@image6_x, 0,@bg_Img6,1,1,0,0)
              Window.drawScale(@image7_x, 0,@bg_Img7,1,1,0,0)
               if @image6_x <= 0 && @image7_x > 0
                  @image6_x += -6
                  @image7_x += -6
	       end
          end

          if @timer > 42 * 60 && @timer < 46 * 60
              Window.drawScale(@image7_x, 0,@bg_Img7,1,1,0,0)
	      Window.drawFont(40, 40, "開花時期", @font2, hash1={:alpha => @alphaFont7})
              Window.drawFont(40, 80, "3月下旬～4月下旬", @font2, hash1={:alpha => @alphaFont7})
              Window.drawFont(40, 160, "アクセス", @font2, hash1={:alpha => @alphaFont7})
              Window.drawFont(40, 200, "JR玉造温泉駅から徒歩　約5分", @font2, hash1={:alpha => @alphaFont7})
                if @alphaSpeed7 < Math::PI 
 	            @alphaSpeed7 += 0.015
		    @alphaFont7 = 255 * Math.sin(@alphaSpeed7).abs
		end
          end
          if @timer > 46 * 60
             stop
          end
   end
end
