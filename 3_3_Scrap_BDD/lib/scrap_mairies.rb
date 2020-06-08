require 'nokogiri'
require 'open-uri'
require 'google_drive'
require 'csv'
# require 'pry' #binding.pry 

class MailMairie
  attr_accessor :what_db, :mairie_hash

  def initialize(what_db)
    @what_db = what_db
  end

  def create_hash_of_name_and_mail

    $annuaire = Nokogiri::HTML(open("http://annuaire-des-mairies.com/val-d-oise.html"))

    def get_townhall_urls
      url_mairies = []
      url_mairies = $annuaire.css('//table[@class="Style20"]//a').map { |link| link["href"] }
      url_mairies_full = []
      url_mairies.each do |i|
        url_mairies_full << 'http://annuaire-des-mairies.com/' + i
      end
      url_mairies_full 
    end
    
    def get_townhall_name
      puts "Veuillez patienter quelques secondes ;-)"
      names_mairies = []
      $annuaire.css('tr > td > p > a').each do |node|
        names_mairies <<  node.text
      end
      names_mairies
    end
    
    def extract_email_of_url(url)
      array_emails_mairies = []
      url.each do |i|
        page_cities = Nokogiri::HTML(open(i))
        page_cities.xpath('/html/body/div/main/section[2]/div/table/tbody/tr[4]/td[2]').each do |node|
          array_emails_mairies << node.text
        end
      end
      array_emails_mairies
    end
    
    def name_and_emails_in_hash(names, emails)
      @mairie_hash = []
      i = 0
      names.each do |key|
        @mairie_hash << {key => emails[i]}
        i += 1
      end

      return @mairie_hash
    end
    name_and_emails_in_hash(get_townhall_name, extract_email_of_url(get_townhall_urls))

  end

  def choose_what_db
    if @what_db == "json"
      save_as_JSON
    elsif @what_db == "google"
      save_as_spreadsheet
    else @what_db == "csv"
      save_as_CSV
    end
  end
  
  def save_as_JSON
    File.open("db/mails.json","w") do |f|
      f.write(@mairie_hash.to_json)
    end
    puts "Ok c'est enregistré dans 'db/mails.json'"
  end

  def save_as_spreadsheet
    session = GoogleDrive::Session.from_config("db/config.json")
    ws = session.spreadsheet_by_key("1xUNL5Q_CTIVcEdxhubjTpfuGN3uU6LUygPR2uTkjpFU").worksheets[0]
    ws[1, 1] = "Names"
    ws[1, 2] = "Mails"
    line = 2
    @mairie_hash.each do |i| 
      i.each do |k, v| 
        ws[line, 1] = k
        line += 1
      end
    end
    line = 2
    @mairie_hash.each do |i| 
      i.each do |k, v| 
        ws[line, 2] = v
        line += 1
      end
    end
    ws.save
    puts "Ok tu peux retrouver la liste ici : https://docs.google.com/spreadsheets/d/1xUNL5Q_CTIVcEdxhubjTpfuGN3uU6LUygPR2uTkjpFU/edit?usp=sharing"
  end

  def save_as_CSV
    line = 1
    CSV.open("db/mails.csv", "w") do |csv|
    @mairie_hash.each do |i|
      i.each do |k , v| 
        csv << [line, k, v]
        line += 1
        end
      end
    end
    puts "Ok c'est enregistré dans 'db/mails.csv'"
  end
end
