require 'gmail'

gmail = Gmail.connect("ppika1231@gmail.com","qsdc2479")
puts gmail.logged_in?
gmail.deliver do
	to "tmanel1248@gmail.com"
	subject "gohome 계정찾기 메일 입니다."
	text_part do
		body "비밀번호는 aaa 입니다"
	end
end

gmail.logout
