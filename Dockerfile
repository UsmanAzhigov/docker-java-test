# Используем официальный образ OpenJDK 11 в качестве базового
FROM openjdk:11 AS builder

# Устанавливаем рабочую директорию внутри контейнера
WORKDIR /app

# Копируем исходный код в рабочую директорию внутри контейнера
COPY . .

# Компилируем Java исходный код
RUN javac main.java 

# Второй этап - создаем образ, который будет использоваться для запуска
FROM openjdk:11

# Устанавливаем рабочую директорию внутри контейнера
WORKDIR /app

# Копируем скомпилированные классы из предыдущего этапа
COPY --from=builder /app .

# Открываем порт 8080 (хотя это не совсем нужно для консольного приложения, но включено для полноты)
EXPOSE 8080

# Запускаем приложение при запуске контейнера
CMD ["java", "main"]
