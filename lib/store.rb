class Store < ActiveRecord::Base
  has_many :employees

  validates :name, length: {minimum: 3}
  validates :annual_revenue, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validate :validation_apparel
    def validation_apparel
      if !mens_apparel && !womens_apparel
        errors.add(:mens_apparel, "either mens_apparel or womens_apparel has to be true")
        errors.add(:womens_apparel, "either mens_apparel or womens_apparel has to be true")
      end
    end
end
