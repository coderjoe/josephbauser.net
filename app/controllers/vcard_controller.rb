class VcardController < ApplicationController
  def show
  end

  def download
    email = 'coderjoe@coderjoe.net'
    photo_hash = Digest::MD5.hexdigest(email.downcase)
    photo_url = "http://www.gravatar.com/avatar/#{photo_hash}"

    card = Vpim::Vcard::Maker.make2 do |maker|
      maker.add_name do |name|
        name.given = 'Joseph'
        name.family = 'Bauser'
      end

      maker.nickname = 'coderjoe'
      maker.birthday = Date.strptime('08/07/1983','%m/%d/%Y')
      
      maker.add_photo do |photo|
        photo.link = photo_url
      end

      maker.add_addr do |addr|
        addr.country = 'United States'
        addr.region = 'New York'
        addr.locality = 'Rochester'
      end

      maker.add_email(email)
      maker.add_url('http://josephbauser.net');

    end

    send_data card.to_s, :filename => 'contact.vcf'
  end
end
