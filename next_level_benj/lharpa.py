import threading
import sys
sys.path.insert(0, './pyautogui-master')
import pyautogui

desired_key = ["command", "l"]

def magic_hh_script():
    print("magic hhhh")

def on_move(x, y):
    magic_hh_script()

def on_press(key):
    try:
        if key in desired_key:
            magic_hh_script()
    except AttributeError:
        pass

def on_release(key):
    if key == keyboard.Key.esc:
        return False

keyboard_listener = keyboard.Listener(on_press=on_press, on_release=on_release)
keyboard_listener.start()
mouse_listener = mouse.Listener(on_move=on_move)
mouse_listener.start()

keyboard_listener.join()
mouse_listener.join()
