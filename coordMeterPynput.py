from pynput import mouse
from tkinter import *
root =Tk()

w = Label(root, text="Hello Tkinter!")
w.pack()
root.mainloop()
def on_click(x, y, button, pressed):
    print(x, y)
    mouse.Listener.stop

with mouse.Listener(on_click=on_click) as listener:
    listener.join()

