a = 50
mails = []
mails2 = []
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

mails.each_with_index do |item, index|
  if (index %2 ==1) then
    mails2.push(item)
  end
end
puts mails2