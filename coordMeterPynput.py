from pynput import mouse

NumberOfMouseClicks = 0

def on_click(x, y, button, pressed):
    print(x, y)
    mouse.Listener.stop

while NumberOfMouseClicks < 10 :
    NumberOfMouseClicks = NumberOfMouseClicks
    with mouse.Listener(on_click=on_click) as listener:
        listener.join()