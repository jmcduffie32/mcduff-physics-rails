class StaticPagesController < ApplicationController
  attr_reader :page
  def home
    @page = 'main'
  end

  def contact
    @page = 'contact'
  end

  def ap1
    @page = 'ap1'
  end

  def mechanics
    @page = 'mechanics'
  end

  def emag
    @page = 'emag'
  end

  def ping_pong
    @page = 'main'
  end

  def sci_oly
    @page = 'main'
  end
end
