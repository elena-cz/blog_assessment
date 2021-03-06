class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         
    has_many :posts     
has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "temp/profile-pic.jpg", :storage => :s3, :bucket => "bucketname", :s3_host_name => "alternate host name if you get an error showing the files"
    validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/

end
