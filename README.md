# Howur_Website

## Запуск проекта!

### Инициализация базы данных PostgreSQL, через docker-compose.

Перед запускам контейнера установите нужный вам пароль для базы данных
в файле docker-compose.ymal и backend/config/database.js пароли должны совпадать.

#### Команды

Запуск контейнера

```
sudo docker-compose up -d
```

Остановка контейнера

```
sudo docker-compose stop
```

Удалить контейнер

```
sudo docker-compose rm
```

### Загрузка данных в базу данных через pg-dump.

#### Переходим в папку backend.

```
cd backend/
```

Вводим команду:

```
sudo cat db-dump.sql |sudo docker-compose exec -T postgres psql -U postgres howur_db
```

### Задание env файла для Next.js, если его нет.

##### Внутри папки frontend создаем файл .env.local

копируем и вставляем переменную и значение

```
NEXT_PUBLIC_STRAPI_API_URL=http://localhost:1337
```

## Установка зависимостей!

### Установка frontend зависимостей

Перейти в папку frontend

```
cd frontend/
```

Команда для установки зависимостей

```
yarn install
```

### Установка backend зависимостей

Выйти с папки frontend командой

```
cd ..
```

Перейти в папку backend

```
cd backend/
```

Команда для установки зависимостей

```
yarn install
```

## Команды для запуска проектов!

### Backend!

Запустите приложение backend с включенной автоматической перезагрузкой.

```
yarn develop
```

Запустите приложение backend с отключенной автоматической перезагрузкой.

```
yarn start
```

Сборка панель администратора.

```
yarn build
```

### Frontend!

запустите сервер разработки:

```
yarn dev
```

Запустить сборку приложения для производственного использования.

```
yarn build
```

Запускает для запуска рабочего сервера Next.js.

```
yarn start
```
