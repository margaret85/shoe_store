class Brand < ActiveRecord::Base
  has_and_belongs_to_many(:stores)
  validates(:name, {:presence => true, :length => {:maximum => 100}})
  validates_uniqueness_of :name
  before_save :cap_name

private

  # def cap_name
  #   self.name =(name.capitalize)
  # end

#Method to capitalize more than the first word - work on if time
  def cap_name
    name = self.name
    words = name.split(" ")
    cap_words = []
    words.each do |word|
      cap_words.push(word.capitalize)
    end
    self.name = cap_words.join(" ")
  end
end
