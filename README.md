# Flask Monitoring Project

Проект представляет собой простой веб-сервис на Flask с мониторингом через Prometheus и визуализацией метрик в Grafana.  
Для хранения данных используется PostgreSQL, а Nginx выполняет роль обратного прокси.

---

## Стек технологий

- **Flask** — веб-приложение на Python
- **PostgreSQL** — база данных (пустышка, добавлена для практики)
- **Nginx** — обратный прокси-сервер
- **Prometheus** — сбор и хранение метрик
- **Grafana** — визуализация метрик
- **Docker & Docker Compose** — контейнеризация и оркестрация

---

## Установка и запуск

### 1. Клонируйте репозиторий:

```bash
git clone https://github.com/yourusername/flask-monitoring-project.git
cd flask-monitoring-project
```

### 2. Создайте файл .env в корне проекта и укажите секреты:

```env
POSTGRES_PASSWORD=<your_password_here>
```

### 3. Запустите контейнеры:

```bash
docker-compose --env-file=<path_to_env_file> up --build
```

## Доступы

* Flask API: http://localhost:5000
* Nginx (reverse proxy): http://localhost
* Prometheus UI: http://localhost:9090
* Grafana UI: http://localhost:3000

По умолчанию логин/пароль:\
Логин: admin\
Пароль: admin

## Мониторинг и метрики

* Prometheus собирает метрики из Flask приложения и Nginx.
* Grafana автоматически подхватывает datasource Prometheus через provisioning.
* В Grafana доступны дашборды с метриками HTTP запросов и производительности.

## Что внутри

* Flask приложение экспортирует метрики с помощью prometheus_flask_exporter.
* Инициализация базы данных происходит через init.sql.
* Nginx настроен на проксирование запросов к Flask и отдачу статических файлов.
* Prometheus настроен на сбор метрик с Flask и самого Nginx.
* Grafana автоматически загружает datasource и дашборды при старте.
