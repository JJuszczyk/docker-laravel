.PHONY: all

composer:
	composer install

helper:
	php artisan ide-helper:generate --no-interaction

dev: helper

analyse:
	vendor/bin/phpstan analyse --memory-limit=2G

documentation:
	php artisan l5-swagger:generate

mess:
	vendor/bin/phpmd app text phpmd-ruleset.xml