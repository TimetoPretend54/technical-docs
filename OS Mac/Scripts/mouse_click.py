#! python3
import pyautogui, sys, time
print('Press Ctrl-C to quit.')

i = 0
try:
    while True:
        i += 1
        time.sleep(15)
        pyautogui.click()
        print('Click: ' + str(i))
except KeyboardInterrupt:
    print('\n')
