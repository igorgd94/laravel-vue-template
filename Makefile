up:
	docker compose up -d

down:
	docker compose down

build:
	docker compose build

bash:
	docker compose exec app bash

migrate:
	docker compose exec app php artisan migrate

seed:
	docker compose exec app php artisan db:seed

fresh:
	docker compose exec app php artisan migrate:fresh --seed

test:
	docker compose exec app php artisan test

vite:
	docker compose exec app npm run dev

install:
	cp -n .env.example src/.env
	docker compose up -d
	docker compose exec app composer install
	docker compose exec app npm install
	docker compose exec app php artisan key:generate

artisan:
	docker compose exec app php artisan

composer:
	docker compose exec app composer

npm:
	docker compose exec app npm