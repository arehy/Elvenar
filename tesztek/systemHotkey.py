from system_hotkey import SystemHotkey
hk = SystemHotkey()
hk.register(('control', 'shift', 'h'), callback=lambda:print("Easy!"))