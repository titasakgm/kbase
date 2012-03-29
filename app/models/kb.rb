class Kb < ActiveRecord::Base
  def self.search(search)
    if search
      where('upper(tags || title || content) LIKE ?', "%#{search.to_s.upcase}%")
    else
      scoped
    end
  end
end
