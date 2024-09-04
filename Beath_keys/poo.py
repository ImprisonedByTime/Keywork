from pynput import keyboard
import time
import json

log_data = []

def on_press(key):
    try:
        log_entry = {
            'timestamp': time.time(),
            'key': key.char,
            'type': 'press'
        }
    except AttributeError:
        log_entry = {
            'timestamp': time.time(),
            'key': str(key),
            'type': 'press'
        }

    log_data.append(log_entry)
    print(f"Logged: {log_entry}")

def on_release(key):
    if key == keyboard.Key.esc:
        # Save log to file
        with open('key_log.json', 'w') as log_file:
            json.dump(log_data, log_file)
        return False

with keyboard.Listener(on_press=on_press, on_release=on_release) as listener:
    listener.join()

