Запуск цієї програми Вам потрібно буде встановити Docker . Він доступний у Windows, macOS і більшості дистрибутивів Linux. Якщо ви вперше користуєтеся Docker і хочете вивчити його детально, перегляньте посилання на додаткові ресурси внизу цього README.

Якщо ви використовуєте Windows, очікується, що ви слідкуєте за WSL або WSL 2 . Це тому, що ми будемо запускати команди оболонки. Ви завжди можете змінити ці команди для PowerShell, якщо хочете.

Клонуйте це сховище будь-де, де вам потрібно, і перемістіть його в каталог:

git clone https://github.com/derkach2288/navigator.git navigator cd navigator

Скопіюйте приклад файлу .env, оскільки справжній git ігнорує:
cp .env.example .env

Будуйте все: Перший раз, коли ви запустите це, це займе 5-10 хвилин залежно від швидкості підключення до Інтернету та апаратних характеристик комп’ютера. Це тому, що він збирається завантажити кілька зображень Docker і створити залежності Ruby + Yarn.

docker-compose up --build Тепер, коли все створено та запущено, ми можемо ставитися до нього як до будь-якої іншої програми Rails.

Перегляньте це в браузері: Відвідайте http://localhost:8000 у своєму улюбленому браузері.

Припинення всього: docker-compose down

Повторний запуск всіх контейнерів docker-compose up Якщо при повторному запуску виводить, що сервер вже запущений "A server is already running. Check /app/tmp/pids/server.pid." Треба видалити server.pid командою: rm tmp/pids/server.pid