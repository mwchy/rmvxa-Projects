##catabomb splash logo
##do not forget to rename the original Scene_Title to Scene_Title2
##catabomb.png needs to be in /pictures of /system

class Scene_Title < Scene_MenuBase
	def start
		super
		make_splash_logo
	end
	
	def make_splash_logo
		@sprite=Sprite.new
		@sprite.bitmap=Cache.picture("catabomb")
		@sprite.opacity=0
	end
	
	def update
		super
		Graphics.wait(15)
		Graphics.fadeout(1)
		@sprite.opacity=255
		Graphics.fadein(30)
		SceneManager.call(Scene_Title2)
	end
end
