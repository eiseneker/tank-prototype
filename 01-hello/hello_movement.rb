require 'gosu'

class GameWindow < Gosu::Window
  def initialize(width=320, height=240, fullscreen=false)
    super
    self.caption = 'Hello Movement'
    @x = @y = 10
    @draws = 0
    @buttons_down = 0
  end

  def update
    @x -= 1 if button_down?(Gosu::KbLeft)
    @x -= 1 if button_down?(Gosu::KbRight)
    @x -= 1 if button_down?(Gosu::KbUp)
    @x -= 1 if button_down?(Gosu::KbDown)
  end

  def button_down(id)
    close if id == Gosu::KbEscape
    @buttons_down += 1
  end
end
