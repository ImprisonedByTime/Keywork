from pynput import keyboard

def on_press(key):
    print(f"DEBUG: Key pressed: {key}")

def on_release(key):
    print(f"DEBUG: Key released: {key}")
    if key == keyboard.Key.esc:
        # Stop listener
        return False

print("DEBUG: Starting key listener...")
# Collect events until released
with keyboard.Listener(on_press=on_press, on_release=on_release) as listener:
    listener.join()
print("DEBUG: Key listener stopped.")

