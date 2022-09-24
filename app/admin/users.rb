ActiveAdmin.register User do
  permit_params :name, :surname, :email, :reset_password_token, :reset_password_sent_at, :remember_created_at
end
