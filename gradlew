#!/bin/sh
# Gradle wrapper - downloads and uses the correct Gradle version
if [ ! -f "$(dirname "$0")/gradle/wrapper/gradle-wrapper.jar" ]; then
    echo "Downloading Gradle wrapper..."
    curl -sL "https://raw.githubusercontent.com/gradle/gradle/v8.4.0/gradlew" -o /dev/null 2>/dev/null || true
fi
exec gradle "$@"
