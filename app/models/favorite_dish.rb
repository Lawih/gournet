class FavoriteDish < ApplicationRecord
  belongs_to :user #ADD AL
  belongs_to :dish #ADD AL
end
