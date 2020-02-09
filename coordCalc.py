from tkinter import*
from tkinter.ttk import * 
from pyautogui import position
from time import sleep
from keyboard import is_pressed
import pyperclip


window = Tk()
window.attributes('-alpha', 0.5)
window.title('coordCalc')
window.iconbitmap('click.ico')
window.geometry("300x400")
window.wm_attributes('-topmost','true')
ins = Text(window, font=("Helvetica",12), height=1)
ins2 = Text(window, font=("Helvetica",8))
a = True

style = Style()
style.configure('w.TLabel', font =('calibri', 12, 'bold'), foreground = 'red') 


ent = Entry(window)
ent.focus()
ent.pack()
#ent.delete(0, END)


fontFamily = "Helvetica"
fontSize = 12
fontColor = "red"

coord1 = Label(window, text='ctrl+shift+1')
coord1.pack()
coord2 = Label(window, text='ctrl+shift+2')
coord2.pack()
coordKivonva = Label(window, text='ctrl+shift+n')
coordKivonva.pack()
coordKivonvaOsztva = Label(window, text='ctrl+shift+n')
coordKivonvaOsztva.pack()

varName = Entry(window)
varName.pack()

#Radio gombok
def set_text():
    text = var.get()
    varName.delete(0,END)
    varName.insert(0,text)
    return
var = StringVar(window, '1')
rbKristaly = Radiobutton(window, text="Kristály", variable=var, value='kristaly', command=set_text)
rbKristaly.pack(anchor = W)
rbMarvany = Radiobutton(window, text="Márvány", variable=var, value='marvany', command=set_text)
rbMarvany.pack(anchor = W)
rbDragako = Radiobutton(window, text="Drágakő", variable=var, value='dragako', command=set_text)
rbDragako.pack(anchor = W)
rbSzerszam = Radiobutton(window, text="Szerszám", variable=var, value='szerszam', command=set_text)
rbSzerszam.pack(anchor = W)

x1 = x2 = y1 = y2 = xKivonvaOsztva = yKivonvaOsztva = 0
whileEx = True
def whileExit():
    global whileEx
    whileEx = False




while whileEx == True:
    x, y = position()
    posStrx = str(x).rjust(4) #az rjust (rjust(4, '0')) a stringet átalakítja annyi karakteresre, ami a zárójelben az első szám, és olyan karrakterre pótolja, ami a 2. érték pl. (4, '0')
    posStry = str(y).rjust(4)
    mousepos = 'X: '+posStrx+' Y: '+posStry
    mouseposFix1 = 'ctrl+shift+1: '+posStrx+', '+posStry
    mouseposFix2 = 'ctrl+shift+2: '+posStrx+', '+posStry
    if is_pressed('ctrl+shift+1'):
        x1 = x
        y1 = y
        coord1.configure(text=mouseposFix1)
    if is_pressed('ctrl+shift+2'):
        x2 = x
        y2 = y
        coord2.configure(text=mouseposFix2)
    ins.insert(INSERT, mousepos)
    sleep(0.0005)

    if is_pressed('ctrl+shift+n') or is_pressed('ctrl+shift+-') or is_pressed('enter'):
        xKivonva = str(x1-x2)
        yKivonva = str(y1-y2)
        try:
            epuletSzam = ent.get()
            epuletSzam = int(epuletSzam)-1
        except ValueError:
            epuletSzam = 1
        if epuletSzam == 0:
            xKivonvaOsztva = yKivonvaOsztva = '0'
        else:
            xKivonvaOsztva = str(round((x1-x2)/(-epuletSzam))) #itt azért kell a minusz az epuletszam előtt, mert hogy jól adja ki az eredményt át kell fordítani
            yKivonvaOsztva = str(round((y1-y2)/(-epuletSzam)))
            
        coordKivonva.configure(text='ctrl+shift+n: '+xKivonva+', '+yKivonva)
        coordKivonvaOsztva.configure(text='ctrl+shift+n: '+xKivonvaOsztva+', '+yKivonvaOsztva, style='w.TLabel')
        coord1.configure(style='w.TLabel')

    strXKivonvaOsztva = str(xKivonvaOsztva)
    strYKivonvaOsztva = str(yKivonvaOsztva)
    strX1 = str(x1)
    strY1 = str(y1)
    if is_pressed('ctrl+shift+q'): #1. koordináta x másol a vágolapra
        pyperclip.copy(x1)
    if is_pressed('ctrl+shift+w'): #1. koordináta y másol a vágólapra
        pyperclip.copy(y1) 
    if is_pressed('ctrl+shift+e'): #1. koordináta x, y másol a vágólapra
        pyperclip.copy(strX1+', '+strY1)
    if is_pressed('ctrl+shift+a'): #2. koordináta x másol a vágólapra
        pyperclip.copy(xKivonvaOsztva)
    if is_pressed('ctrl+shift+s'): #2. koordináta y másol a vágólapra
        pyperclip.copy(yKivonvaOsztva)
    if is_pressed('ctrl+shift+d'): #2. koordináta x, y másol a vágólapra
        pyperclip.copy(strXKivonvaOsztva+', '+strYKivonvaOsztva)
    if is_pressed('ctrl+shift+n') and a == True:
        a = False
        copyAll = varName.get()+'X := '+strX1+'\n'
        copyAll += varName.get()+'Y := '+strY1+'\n'
        copyAll += varName.get()+'DefX := '+strXKivonvaOsztva+'\n'
        copyAll += varName.get()+'DefY := '+strYKivonvaOsztva+'\n'
        #pyperclip.copy(copyAll)
        #ins2.delete(1.0,END)
        ins2.insert(INSERT, copyAll)
        pyperclip.copy(ins2.get(1.0, END))
    if is_pressed('ctrl+shift+m'):
        a = True
    if is_pressed('ctrl+shift+l'):
        ins2.delete(1.0,END)
    if is_pressed('ctrl+shift+b'):
        break
    
    window.protocol('WM_DELETE_WINDOW', whileExit)



    window.update()
    ins.delete(1.0,END)
    ins.pack()
    ins2.pack()

        
        

window.destroy()