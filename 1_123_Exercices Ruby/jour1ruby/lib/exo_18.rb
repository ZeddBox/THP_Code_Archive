a = 50
mails = []
n = 1

a.times do
  mail = ""
  mail << "julien.anceau"
    if n < 10
      mail << "0#{n.to_i}"
    else
      mail << "#{n.to_i}"
    end
  mail << "@gmail.com"
 mails.push(mail)
n+=1
end

puts mails