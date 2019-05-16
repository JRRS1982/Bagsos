
def sign_up(username: "Bob", email: "bob@bob.com", password: "password")
  visit "/"
  click_link "Sign Up"
  fill_in "user_name", with: username
  fill_in "user_email", with: email
  fill_in "user_password", with: password
  fill_in "user_password_confirmation", with: password
  click_button "Sign up"
end

# def log_in(email: "bob@bob.com", password: "password")
#   visit("/login")
#   fill_in("Email address"), with: email
#   fill_in("Password"), with: password
#   click_button("Log in")
# end

# def create_task
#   click_link("New Task")
#   fill_in('Title'), with: ('Help me cut my grass in Camden Town')
#   fill_in('Description'), with: ('I am a disabled man with a small garden in Camden Town, I need some help cutting my grass')
#   click_button('List Task')
# end

