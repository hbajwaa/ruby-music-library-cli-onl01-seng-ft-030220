module Concerns::Findable

  def find_by_name(name)
    self.all.find {|ele| ele.name == name}
  end

  def find_or_create_by_name(name)
    self.find_by_name(name) || self.create(name)
  end


end
