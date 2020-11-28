# Movie Model - generated with 'rails g model movie title:string rating:string total_gross:decimal'
class Movie < ApplicationRecord
  def flop?
    total_gross.blank? || total_gross < 225_000_000
  end
end
