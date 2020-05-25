import sys,os
from app import Toaster
Toast = Toaster()

Toast.ToastText01(mess="1", appname="Project", exptime=40)
Toast.ToastText02(title="bye",mess="2", appname="Project", exptime=40)
Toast.ToastText03(title="bye",mess="3", appname="Project", exptime=40)
Toast.ToastText04(title="bye",mess="4",messtwo="finish", appname="Project", exptime=40)
Toast.ToastImageAndText01(mess="5",iconpath=os.path.abspath("python.ico").replace("\\","/"), appname="Project", exptime=40)
Toast.ToastImageAndText02(title="bye",mess="6",iconpath=os.path.abspath("python.ico").replace("\\","/"), appname="Project", exptime=40)
Toast.ToastImageAndText03(title="bye",mess="7",iconpath=os.path.abspath("python.ico").replace("\\","/"), appname="Project", exptime=40)
Toast.ToastImageAndText04(title="bye",mess="8", messtwo="finish", iconpath=os.path.abspath("python.ico").replace("\\","/"), appname="Project", exptime=40)
