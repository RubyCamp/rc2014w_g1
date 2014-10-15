#encording:utf8
require 'dxruby'

class Matsue < Scene

	def initialize
		super
		@bg_img1 = Image.load("scenes/matsue/images/matsuejou1.png")
		@bg_img2 = Image.load("scenes/matsue/images/matsuejou2.png")
		@bg_img3 = Image.load("scenes/matsue/images/matsuejou3.png")

		@alphaImg1 = 1
		@alphaImg2 = 1
		@alphaImg3 = 1
		@alphaSpeed = 0
		@alphaFont1 = 0
		@alphaFont2 = 0
		@alphaFont3 = 0
		@time = 0

		@font1 = Font.new(25, fontname = "ＭＳ 明朝")
	end


	def play
		@time += 1;
		if @alphaImg1 > 0
			Window.drawAlpha(0, 0, @bg_img1, @alphaImg1)
			Window.drawFontEx(40, 80, "松江城山公園は", @font1, hash1={:alpha => @alphaFont1, :edge => true, :edge_width => 1})
			Window.drawFontEx(40, 120, "日本さくら名所100選にも選ばれた", @font1, hash1={:alpha => @alphaFont1, :edge => true, :edge_width => 1})
			Window.drawFontEx(40, 160, "桜の名所として有名です", @font1, hash1={:alpha => @alphaFont1, :edge => true, :edge_width => 1})
			if @time > 2 * 60 && @alphaSpeed < Math::PI
				@alphaSpeed += 0.01
				@alphaFont1 = 255 * Math.sin(@alphaSpeed).abs
			end
			if @time < 4 * 60 && @alphaImg1 < 255
				@alphaImg1 += 2
			end
			if @time > 5 * 60
				@alphaImg1 += -0.8
			end
		end

		if @time > 8 * 60 && @alphaImg2 > 0
			Window.drawAlpha(0, 0, @bg_img2, @alphaImg2)
			Window.drawFont(40, 80, "ライトアップされた", @font1, hash1={:alpha => @alphaFont2})
			Window.drawFont(40, 120, "夜桜も美しいです", @font1, hash1={:alpha => @alphaFont2})

			if @time > 10 * 60 && @alphaSpeed < 2 * Math::PI
				@alphaSpeed += 0.01
				@alphaFont2 = 255 * Math.sin(@alphaSpeed).abs
			end

			if @alphaImg2 < 255
				@alphaImg2 += 0.8
			end

			if @time > 13 * 60 && @alphaImg2 > 0 
				@alphaImg2 += -2
			end
		end

		if @time > 16 * 60 && @alphaImg3 > 0
			Window.drawAlpha(0, 0, @bg_img3, @alphaImg3)
			Window.drawFontEx(500, 80, "堀川遊覧船からも", @font1, hash1={:alpha => @alphaFont3, :edge => true, :edge_width => 1})
			Window.drawFontEx(500, 120, "桜を見ることが出来ます", @font1, hash1={:alpha => @alphaFont3, :edge => true, :edge_width => 1})

			if @time > 18 * 60 && @alphaSpeed < 3 * Math::PI
				@alphaSpeed += 0.01
				@alphaFont3 = 255 * Math.sin(@alphaSpeed).abs
			end

			if @alphaImg3 < 255
				@alphaImg3 += 0.8
			end

			if @time > 21 * 60 && @alphaImg3 > 0 
				@alphaImg3 += -2
			end
			#終了
			if @alphaImg3 < 0
				stop
			end
		end
	end
end

