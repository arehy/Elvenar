from tkinter import *

def sel():
   selection = "You selected the option " + str(var.get())
   label.config(text = selection)

root = Tk()
var = StringVar(root, '1')
R1 = Radiobutton(root, text="Kristály", variable=var, value='kristaly', command=sel)
R1.pack( anchor = W )

R2 = Radiobutton(root, text="Márvány", variable=var, value='marvany', command=sel)
R2.pack( anchor = W )

R3 = Radiobutton(root, text="Drágakő", variable=var, value='dragako', command=sel)
R3.pack( anchor = W)


label = Label(root)
label.pack()
root.mainloop()