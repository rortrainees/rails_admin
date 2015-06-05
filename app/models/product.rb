class Product < ActiveRecord::Base
	 validates_presence_of :name, :price, :description

	 rails_admin do
    configure :product do
      label 'Owner of this  '
    end
end
end
