class Book < ActiveRecord::Base
  before_create :convert_price_to_dollar
  before_destroy :keep_log

  validates :price, presence: true
  validates :title, uniqueness: { case_sensitive: false, message: 'book with this title already exist in db'}
  validate :check_price#, message: 'minimum price is $10'

  has_one :book_info
  belongs_to :subject

  private
  # triggered while creating a record for first time
  def convert_price_to_dollar
  	self.price = self.price.to_f/100
  end

  def keep_log
  	Rails.logger.info "Warning! #{self.title} book having price #{self.price} and id #{self.id} is going to be deleted."
  end

  def check_price
    Rails.logger.info "checking price"
    if self.price.present? && self.price.to_i > 1000
      return true
    else
      return false
    end
  end
end

