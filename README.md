# README

git clone git@github.com:cthanh2803/rails-devise.git

cd rails-devise

docker-compose build

docker-compose run web rails db:create

docker-compose run web rails db:migrate

docker-compose up


Sign up: localhost:3000/users/sign_up

Login: localhost:3000/users/sign_in
