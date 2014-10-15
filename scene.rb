class Scene
  def initialize
		@running = false
	end

	def running?
		return @running
	end
	
	def start
		@running = true
	end
	
	def stop
		@running = false
	end
end