# frozen_string_literal: true

%i[admin client].each do |role|
  Role.create(name: role)
end

%i[admin client].each do |role|
  user = User.create!(
    email: "#{role}@test.com",
    first_name: 'test',
    last_name: role,
    phone_number: '12345678'
  )

  user.add_role(role)
end
