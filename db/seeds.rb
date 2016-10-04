@user = User.create(email: "test@test.com",
                                        password: "asdfasdf",
                                        password_confirmation: "asdfasdf",
                                        first_name: "Jon",
                                        last_name: "Snow",
                                        phone: "4322386131")

puts "1 User created"

AdminUser.create(email: "admin@test.com",
                                    password: "asdfasdf",
                                    password_confirmation: "asdfasdf",
                                    first_name: "Admin",
                                    last_name: "Name",
                                    phone: "4322386131")

puts "1 Admin User created"

100.times do |post|
    Post.create!(date: Date.today, rationale: "#{post} rationale content Kinfolk gentrify you probably haven't heard of them try-hard, swag lo-fi lyft biodiesel cold-pressed. Everyday carry tattooed listicle blue bottle, sartorial post-ironic hot chicken lomo cornhole shoreditch DIY. Put a bird on it neutra taxidermy tumblr. Drinking vinegar literally humblebrag, edison bulb XOXO celiac biodiesel pour-over beard. Irony sartorial biodiesel 8-bit, PBR&B poutine small batch flexitarian +1 pitchfork tote bag mumblecore. Neutra marfa lo-fi, iceland jianbing hashtag venmo vape vinyl poke polaroid taxidermy.", user_id: @user.id, overtime_request: 2.5)
end

puts "100 Posts have been created"

100.times do |audit_log|
    AuditLog.create!(user_id: @user.id, status: 0, start_date: (Date.today - 6.days))
end

puts "100 audit logs have been created"