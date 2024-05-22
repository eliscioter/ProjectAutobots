import pyautogui

def press_tab_key():
    pyautogui.press('tab')
    
def press_arrow_down_key(number_of_presses):
    pyautogui.press('down', presses=int(number_of_presses))

def press_enter_key():
    pyautogui.press('enter')