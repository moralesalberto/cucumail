Given(/^an email with a subject "(.*?)"$/) do |subject|
  @subject = subject
end

Given(/^a body with the content "(.*?)"$/) do |content|
  @content = content
end

When(/^the email is delivered$/) do
  Mailer.notification(@subject, @content).deliver
end


Then(/^the email should have a subject "(.*?)" and body "(.*?)"$/) do |subject, body|
  assert_equal subject, ActionMailer::Base.deliveries.first.subject
  assert_equal body, ActionMailer::Base.deliveries.first.body.to_s.chomp
end

Then(/^the email from is "(.*?)"$/) do |arg1|
  assert_equal 1, ActionMailer::Base.deliveries.size
  puts ActionMailer::Base.deliveries.inspect
end
