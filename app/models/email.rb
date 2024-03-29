 class Email < ActiveRecord::Base
  attr_accessible :body, :editors, :from, :send_at, :to

   after_save :do_send_revision

   named_scope :pending, :condition => ['send_at>=NOW()']


#    What sort of Methods do I want ??
#    -- I want that after the email is updated -> I want to Send off the emails to either the editors or 
#       if the timestamp is over => send to the recipient.


#Here, what I am doing is that when the "updation" takes place, I have "hooked" a 'callback'
#                                                                       (ie do_send_revision)
  after_save :do_send_revision

  def do_send_revision

  # How do I get rails to send emails ??--> using "mailers"
    EmailMailer.revision(self)
  end

#  def self.find_all_pending
#    find(:all, :conditions => ['send_at>=NOW()'])
#  end

# For development in Prodcution Mode. :
# Rails.env=ActiveSupport::StringInquirer.new('production')

end
