require 'award'

def update_quality(awards)
  awards.each do |award|
    case award.name
      when "NORMAL ITEM"
        award.normal_award
      when "Blue First"
        award.blue_first
      when "Blue Compare"
        award.blue_compare
      when "Blue Star"
        award.blue_star
    end
  end
end
