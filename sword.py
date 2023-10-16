import pyautogui
import keyboard
import time
import ctypes
import os

global go
go = False

print('Press and Hold shift while looking at the sword to win.\nIf something goes wrong press F10 to exit')

keyboard.add_hotkey('f10',lambda:os._exit(0))

while True:
    if keyboard.is_pressed('shift'):
        pyautogui.mouseDown()
        for _ in range(100):
            if not keyboard.is_pressed('shift'):
                break
            ctypes.windll.user32.mouse_event(0x0003, 0 , -6000, 0, 0)
            time.sleep(0.03)
        go = True
    elif go == True:
        pyautogui.mouseUp()
        go = False