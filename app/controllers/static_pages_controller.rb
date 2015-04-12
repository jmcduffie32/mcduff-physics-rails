class StaticPagesController < ApplicationController
  attr_reader :page
  def home
    @page = 'main'
    @title = "MCDUFF PHYSICS"
  end

  def contact
    @page = 'contact'
    @title = @page.upcase
  end

  def ap1
    @page = 'ap1'
    @title = @page.upcase
  end

  def mechanics
    @page = 'mechanics'
    @title = @page.upcase
  end

  def emag
    @page = 'emag'
    @title = @page.upcase
  end

  def ping_pong
    @page = 'main'
    @title = "PING PONG"
  end

  def sci_oly
    @page = 'main'
    @title = "SCI OLY"
  end
end
