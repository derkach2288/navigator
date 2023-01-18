###Запуск цієї програми 
Вам потрібно буде встановити [Docker](https://docs.docker.com/get-docker/)

Клонуйте це сховище будь-де, де вам потрібно, і перемістіть його в каталог:

```
git clone https://github.com/derkach2288/navigator.git navigator 
cd navigator
```

Скопіюйте приклад файлу .env, оскільки справжній git ігнорує:

```
cp .env.example .env
```
Скопіюйте приклад файлу docker-compose.override.yml
```
cp docker-compose.override.yml.example docker-compose.override.yml
```
Будуйте все: Перший раз, коли ви запустите це, це займе 5-10 хвилин залежно від швидкості підключення до Інтернету та апаратних характеристик комп’ютера. Це тому, що він збирається завантажити кілька зображень Docker і створити залежності Ruby + Yarn.

```
docker-compose up --build
```
 Тепер, коли все створено та запущено, ми можемо ставитися до нього як до будь-якої іншої програми Rails.

Перегляньте це в браузері: Відвідайте http://localhost:8000 у своєму улюбленому браузері.

Припинення всього: docker-compose down

Повторний запуск всіх контейнерів: 
```
docker-compose up
```
 Якщо при повторному запуску виводить, що сервер вже запущений 
 `"A server is already running. Check /app/tmp pids/server.pid."`
  Треба видалити server.pid командою: 
  ```
  rm tmp/pids/server.pid
  ```