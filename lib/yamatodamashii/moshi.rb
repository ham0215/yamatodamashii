module Yamatodamashii
  def もし(hantei)
    @yamatodamashii_moshi = YamatodamashiiMoshi.new(hantei)
    @yamatodamashii_moshi
  end

  class YamatodamashiiMoshi
    def initialize(hantei)
      @hantei = hantei
    end

    def だったら
      return self if defined? @kekka
      return self unless @hantei
      @kekka = yield
      self
    end

    def または(hantei)
      return self if @hantei
      @hantei = hantei
      self
    end

    def それ以外だったら
      return self if defined? @kekka
      return self if @hantei
      @kekka = yield
      self
    end

    def 。
      @kekka
    end
  end
end
