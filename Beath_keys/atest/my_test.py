import keyboard
#/home/g/Project/Beath_keys/my_test.py
#chmod +x /home/g/Project/Beath_keys/my_test.py
def on_key(event):
    print(f"DEBUG: Key event: {event.name}")

print("DEBUG: Starting key listener with `keyboard`...")
# Start listening for key events
keyboard.on_press(on_key)
keyboard.wait('esc')
print("DEBUG: Key listener stopped.")

