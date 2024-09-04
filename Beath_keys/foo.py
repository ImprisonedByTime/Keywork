## foo.py
#
#from pynput import keyboard
#
#def on_press(key):
#    try:
#        # Debug: Print the key pressed
#        print(f"DEBUG: Key pressed: {key}")
#
#        # Check if the pressed key is 'j'
#        if key.char == 'j':
#            print("You pressed the 'j' key!")
#        else:
#            print(f"You pressed the '{key.char}' key!")
#    except AttributeError:
#        # Handle special keys (like Esc, Enter, etc.)
#        print(f"DEBUG: Special key pressed: {key}")
#        if key == keyboard.Key.esc:
#            print("Exiting program...")
#            return False  # Stop the listener to exit the program
#
#def on_release(key):
#    # This function can be left empty if not needed
#    pass
#
#def main():
#    print("DEBUG: Starting the key listener...")
#    # Start listening for key presses
#    with keyboard.Listener(on_press=on_press, on_release=on_release) as listener:
#        listener.join()
#    print("DEBUG: Key listener stopped.")
#
#if __name__ == "__main__":
#    main()

# foo.py

from pynput import keyboard

def on_press(key):
    try:
        # Debug: Print the key pressed
        print(f"DEBUG: Key pressed: {key}")

        # Check if the pressed key is 'j'
        if key.char == 'j':
            print("You pressed the 'j' key!")
        else:
            print(f"You pressed the '{key.char}' key!")
    except AttributeError:
        # Handle special keys (like Esc, Enter, etc.)
        print(f"DEBUG: Special key pressed: {key}")
        if key == keyboard.Key.esc:
            print("Exiting program...")
            return False  # Stop the listener to exit the program

def on_release(key):
    print(f"DEBUG: Key released: {key}")

def main():
    print("DEBUG: Starting the key listener...")
    # Start listening for key presses
    with keyboard.Listener(on_press=on_press, on_release=on_release) as listener:
        listener.join()
    print("DEBUG: Key listener stopped.")

if __name__ == "__main__":
    main()

