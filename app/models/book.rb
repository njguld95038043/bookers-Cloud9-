class Book < ApplicationRecord
  belongs_to = user

  def self.search(search, word)
  return all if word.blank?

  if search == "perfect_match"
    where("nick_name = ?", "#{word}")
  elsif search == "forward_match"
    where("nick_name LIKE?", "#{word}%")
  elsif search == "backward_match"
    where("nick_name LIKE?", "%#{word}")
  elsif search == "partial_match"
    where("nick_name LIKE?", "%#{word}%")
  else
    all
  end
end

end
