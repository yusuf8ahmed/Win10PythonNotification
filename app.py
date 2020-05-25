import clr
import sys
import os

class Toaster:
    def __init__(self):
        """
            This dll is build on a x64 plaform and may not work or x86-(32-bit) plafroms
            Image must be give in full path format (Start with C:) and must be either in 
            "C:\\Users\\Yusuf\\Desktop\\Airman_Logo\\PyToastJPG.jpg" or 
            "C:/Users/Yusuf/Desktop/Airman_Logo/PyToastJPG.jpg"
        """
        clr.AddReference("toasty")
        from Toaster import Toasts
        self.ct = Toasts()

    def testtoast():
        return None

    def ToastText01(self, mess: str, appname: str = "Python", exptime: int = 30)-> str:
        """
        <toast><visual><binding template="ToastText01"><text id="1"></text></binding></visual></toast>
        https://docs.microsoft.com/en-us/uwp/api/windows.ui.notifications/images/toast_1.png?view=winrt-18362
        C# lang: ToastText01(string mess, string appname, int exptime)

        Params:
        string mess,
        string appname,
        int exptime: The date and time after which the toast is no longer considered current or valid and should not be displayed.

        from app import Toaster
        toast = Toaster()
        toast.ToastText01(mess="hello")
        toast.ToastText01(mess="hello", appname="Project", exptime=40)
        """
        return self.ct.ToastText01(mess, appname, exptime)

    def ToastText02(self, title: str, mess: str, appname: str = "Python", exptime: int = 30)-> str:
        """
        <toast><visual><binding template="ToastText02"><text id="1">helo</text><text id="2">bello</text></binding></visual></toast>
        https://docs.microsoft.com/en-us/uwp/api/windows.ui.notifications/images/toast_2.png?view=winrt-18362    
        C# lang: ToastText02(string title, string mess, string appname, int exptime)

        Params:
        string title,
        string mess,
        string appname,
        int exptime: The date and time after which the toast is no longer considered current or valid and should not be displayed.

        from app import Toaster
        toast = Toaster()
        toast.ToastText02(title="bye",mess="hello")
        toast.ToastText02(title="bye",mess="hello", appname="Project", exptime=40)
        """
        return self.ct.ToastText02(title, mess, appname, exptime);

    def ToastText03(self, title: str, mess: str, appname: str = "Python", exptime: int = 30)-> str:
        """
        !! Not Worth using
        <toast><visual><binding template="ToastText03"><text id="1"></text><text id="2"></text></binding></visual></toast>
        https://docs.microsoft.com/en-us/uwp/api/windows.ui.notifications/images/toast_4.png?view=winrt-18362
        C# lang: ToastText03(string title, string mess, string appname, int exptime)

        Params:
        string title,
        string mess,
        string appname,
        int exptime: The date and time after which the toast is no longer considered current or valid and should not be displayed.

        from app import Toaster
        toast = Toaster()
        toast.ToastText03(title="bye",mess="hello")
        toast.ToastText03(title="bye",mess="hello", appname="Project", exptime=40)
        """
        return self.ct.ToastText03(title, mess, appname, exptime);

    def ToastText04(self, title: str, mess: str, messtwo: str, appname: str = "Python", exptime: int = 30)-> str:
        """
        !!Not Worth using
        <toast><visual><binding template="ToastText04"><text id="1">title</text><text id="2">my mess</text><text id="3">my mess</text></binding></visual></toast>
        https://docs.microsoft.com/en-us/uwp/api/windows.ui.notifications/images/toast_5.png?view=winrt-18362
        C# lang: ToastText04(string title, string mess, string messtwo, string appname, int exptime)

        Params:
        string title,
        string mess,
        string messtwo,
        string appname,
        int exptime: The date and time after which the toast is no longer considered current or valid and should not be displayed.

        from app import Toaster
        toast = Toaster()
        toast.ToastText04(title="bye",mess="hello", messtwo="finish")
        toast.ToastText04(title="bye",mess="hello",messtwo="finish", appname="Project", exptime=40)

        """
        return self.ct.ToastText04(title, mess, messtwo, appname, exptime);

    def ToastImageAndText01(self, mess: str, iconpath: str, appname: str = "Python", exptime: int = 30)-> str:
        """
        <toast><visual><binding template="ToastImageAndText01"><image id="1" src="file:///python.ico" /><text id="1">title</text></binding></visual></toast>
        https://docs.microsoft.com/en-us/uwp/api/windows.ui.notifications/images/toast_6.png?view=winrt-18362
        C# lang: ToastImageAndText01(string mess, string iconpath, string appname, int exptime)

        Params:
        string mess,
        string iconpath,
        string appname,
        int exptime: The date and time after which the toast is no longer considered current or valid and should not be displayed.

        from app import Toaster
        toast = Toaster()
        toast.ToastImageAndText01(mess="hello", iconpath="C:\\Users\\Yusuf\\Desktop\\Airman_Logo\\PyToastJPG.jpg" )
        toast.ToastImageAndText01(mess="hello",iconpath="C:\\Users\\Yusuf\\Desktop\\Airman_Logo\\PyToastJPG.jpg", appname="Project", exptime=40)

        """
        return self.ct.ToastImageAndText01(mess, iconpath, appname, exptime)

    def ToastImageAndText02(self, title: str, mess: str, iconpath: str, appname: str = "Python", exptime: int = 30)-> str:
        """
        <toast><visual><binding template="ToastImageAndText02"><image id="1" src="file:///python.ico" /><text id="1">title</text><text id="2"></text></binding></visual></toast>
        https://docs.microsoft.com/en-us/uwp/api/windows.ui.notifications/images/toast_7.png?view=winrt-18362
        C# lang: ToastImageAndText02(string title, string mess, string iconpath, string appname, int exptime)

        Params:
        string title,
        string mess,
        string iconpath,
        string appname,
        int exptime: The date and time after which the toast is no longer considered current or valid and should not be displayed.

        from app import Toaster
        toast = Toaster()
        toast.ToastImageAndText02(title="bye",mess="hello", iconpath="C:\\Users\\Yusuf\\Desktop\\Airman_Logo\\PyToastJPG.jpg" )
        toast.ToastImageAndText02(title="bye",mess="hello",iconpath="C:\\Users\\Yusuf\\Desktop\\Airman_Logo\\PyToastJPG.jpg", appname="Project", exptime=40)
        """
        return self.ct.ToastImageAndText02(title, mess, iconpath, appname, exptime);
        
    def ToastImageAndText03(self, title: str, mess: str, iconpath: str, appname: str = "Python", exptime: int = 30)-> str:
        """
        !!Not Worth using
        <toast><visual><binding template="ToastImageAndText03"><image id="1" src="file:///python.ico" /><text id="1">title</text><text id="2"></text></binding></visual></toast>
        https://docs.microsoft.com/en-us/uwp/api/windows.ui.notifications/images/toast_8.png?view=winrt-18362
        C# lang: ToastImageAndText03(string title, string mess, string iconpath, string appname, int exptime)

        Params:
        string title,
        string mess,
        string iconpath,
        string appname,
        int exptime: The date and time after which the toast is no longer considered current or valid and should not be displayed.

        from app import Toaster
        toast = Toaster()
        toast.ToastImageAndText03(title="bye",mess="hello", iconpath="C:\\Users\\Yusuf\\Desktop\\Airman_Logo\\PyToastJPG.jpg" )
        toast.ToastImageAndText03(title="bye",mess="hello",iconpath="C:\\Users\\Yusuf\\Desktop\\Airman_Logo\\PyToastJPG.jpg", appname="Project", exptime=40)
        """
        return self.ct.ToastImageAndText03(title, mess, iconpath, appname, exptime);

    def ToastImageAndText04(self, title: str, mess: str, messtwo: str, iconpath: str, appname: str = "Python", exptime: int = 30)-> str:
        """
        !!Not Worth using
        <toast><visual><binding template="ToastImageAndText04"><image id="1" src="file:///python.ico" /><text id="1">title</text><text id="2"></text><text id="3"></text></binding></visual></toast>
        https://docs.microsoft.com/en-us/uwp/api/windows.ui.notifications/images/toastimageandtext04.png?view=winrt-18362
        C# lang: ToastImageAndText04(string title, string mess, string messtwo, string iconpath, string appname, int exptime)

        Params:
        string title,
        string mess,
        string messtwo,
        string iconpath,
        string appname,
        int exptime: The date and time after which the toast is no longer considered current or valid and should not be displayed.

        from app import Toaster
        toast = Toaster()
        toast.ToastImageAndText04(title="bye",mess="hello", messtwo="finish", iconpath="C:\\Users\\Yusuf\\Desktop\\Airman_Logo\\PyToastJPG.jpg" )
        toast.ToastImageAndText04(title="bye",mess="hello", messtwo="finish", iconpath="C:\\Users\\Yusuf\\Desktop\\Airman_Logo\\PyToastJPG.jpg", appname="Project", exptime=40)
        """
        return self.ct.ToastImageAndText04(title, mess, messtwo, iconpath, appname, exptime);

if __name__ == "__main__":
    #Yusufing purposes
    Toast = Toaster()

    Toast.ToastText01(mess="1", appname="Project", exptime=40)
    Toast.ToastText02(title="bye",mess="2", appname="Project", exptime=40)
    Toast.ToastText03(title="bye",mess="3", appname="Project", exptime=40)
    Toast.ToastText04(title="bye",mess="4",messtwo="finish", appname="Project", exptime=40)
    Toast.ToastImageAndText01(mess="5",iconpath="C:\\Users\\Yusuf\\Desktop\\Airman_Logo\\PyToastJPG.jpg", appname="Project", exptime=40)
    Toast.ToastImageAndText02(title="bye",mess="6",iconpath="C:\\Users\\Yusuf\\Desktop\\Airman_Logo\\PyToastJPG.jpg", appname="Project", exptime=40)
    Toast.ToastImageAndText03(title="bye",mess="7",iconpath="C:\\Users\\Yusuf\\Desktop\\Airman_Logo\\PyToastJPG.jpg", appname="Project", exptime=40)
    Toast.ToastImageAndText04(title="bye",mess="8", messtwo="finish", iconpath="C:\\Users\\Yusuf\\Desktop\\Airman_Logo\\PyToastJPG.jpg", appname="Project", exptime=40)
