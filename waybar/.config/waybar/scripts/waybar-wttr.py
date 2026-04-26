#!/usr/bin/env python
import json
import requests

ICONS = {
    0: "☀️", 1: "🌤", 2: "⛅", 3: "☁️",
    45: "🌫", 48: "🌫",
    51: "🌦", 53: "🌦", 55: "🌧",
    61: "🌦", 63: "🌧", 65: "🌧",
    71: "🌨", 73: "🌨", 75: "❄️",
    80: "🌦", 81: "🌧", 82: "🌧",
    95: "⛈", 96: "⛈", 99: "⛈"
}

r = requests.get(
    "https://api.open-meteo.com/v1/forecast",
    params={
        "latitude": 54.6872,
        "longitude": 25.2797,
        "current": "temperature_2m,apparent_temperature,weathercode,windspeed_10m",
        "timezone": "Europe/Vilnius"
    }
).json()

c = r["current"]
icon = ICONS.get(c["weathercode"], "?")
temp = round(c["temperature_2m"])
feels = round(c["apparent_temperature"])
wind = round(c["windspeed_10m"])

print(json.dumps({
    "text": f"{icon} {temp}°",
    "tooltip": f"{icon} {temp}°C  feels like {feels}°C  💨 {wind} km/h"
}))