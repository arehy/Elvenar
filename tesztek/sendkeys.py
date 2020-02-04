import SendKeys
import time

def main():
    try:
        sendMe = 'Hello'
        time.sleep(2)
        SendKeys.SendKeys(sendMe)
    except Exception, e:
        print (str(e))

main()