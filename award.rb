# Award = Struct.new(:name, :expires_in, :quality) 

class Award
    attr_accessor :name, :expires_in, :quality

    def initialize(name, expires_in, quality)
        @name = name
        @expires_in = expires_in
        @quality = quality
    end

    def normal_award
      if self.expires_in >= 1 
        self.quality -=1
        elsif self.expires_in <= 0 
          self.quality -= 2
      end
      self.quality = 0 if self.quality <= 0
      self.expires_in -=1
    
    end

    def blue_first
      if self.quality < 50 and !self.award_expired?
          self.quality += 1
      elsif self.quality < 50 
          self.quality +=2
      elsif
          self.quality = 50
      end
          self.quality = 50 if self.quality > 50
          self.expires_in -=1
          
    end


    def award_expired?
      self.expires_in < 1
    end

    def blue_compare
     if self.expires_in > 10
            self.quality += 1
        elsif self.expires_in > 5 and self.expires_in < 11
            self.quality += 2
          elsif self.expires_in > 0 and self.expires_in < 6
              self.quality += 3
        end
        self.quality = 50 if self.quality > 50
        self.quality = 0 if self.expires_in <= 0
        self.expires_in -= 1 
    end

    def blue_star
      if self.expires_in >= 5
        self.quality -= 2
      elsif self.expires_in <= 0
          self.quality -=4
      end
      self.expires_in -= 1
      self.quality = 0 if self.quality <= 0
    end


  end
