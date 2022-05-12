# Jungle

A mini e-commerce application built with Rails 6.1 for purposes of teaching Rails by example.

![Screen Shot 2022-05-12 at 4 11 37 AM](https://user-images.githubusercontent.com/96452610/168024299-6dec6289-a6e6-44d0-a095-aae7a98ace43.png)

![Screen Shot 2022-05-12 at 4 11 56 AM](https://user-images.githubusercontent.com/96452610/168024325-6c697300-a32e-4f2c-94a7-53ae0c8af7b2.png)

![Screen Shot 2022-05-12 at 4 12 04 AM](https://user-images.githubusercontent.com/96452610/168024344-1459a7d1-10c9-4141-8ca6-0b995b3c1f58.png)

![Screen Shot 2022-05-12 at 4 12 40 AM](https://user-images.githubusercontent.com/96452610/168024372-064e7183-82ed-4e42-a75c-d304297d6998.png)

![Screen Shot 2022-05-12 at 4 13 04 AM](https://user-images.githubusercontent.com/96452610/168024399-4fb22fd7-9dad-41d4-bd4a-b1dfd90f5d38.png)

![Screen Shot 2022-05-12 at 4 13 47 AM](https://user-images.githubusercontent.com/96452610/168024428-ec748552-8fa6-409d-8268-1b2fb9679a62.png)

![Screen Shot 2022-05-12 at 4 15 57 AM](https://user-images.githubusercontent.com/96452610/168024604-b3890845-0c31-4f28-b128-e58192ea844f.png)


## Setup

1. Run `bundle install` to install dependencies
2. Create `config/database.yml` by copying `config/database.example.yml`
3. Create `config/secrets.yml` by copying `config/secrets.example.yml`
4. Run `bin/rails db:reset` to create, load and seed db
5. Create .env file based on .env.example
6. Sign up for a Stripe account
7. Put Stripe (test) keys into appropriate .env vars
8. Run `bin/rails s -b 0.0.0.0` to start the server

## Database

If Rails is complaining about authentication to the database, uncomment the user and password fields from `config/database.yml` in the development and test sections, and replace if necessary the user and password `development` to an existing database user.

## Stripe Testing

Use Credit Card # 4111 1111 1111 1111 for testing success scenarios.

More information in their docs: <https://stripe.com/docs/testing#cards>

## Dependencies

- Rails 6.1 [Rails Guide](http://guides.rubyonrails.org/v6.1/)
- Bootstrap 5
- PostgreSQL 9.x
- Stripe
