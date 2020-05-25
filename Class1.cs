using System;
using System.Collections.Generic;
using System.Linq;
using System.Xml;
using System.Text;
using System.Threading.Tasks;
using Windows.UI.Notifications;
using Windows.Data.Xml.Dom;
using XmlNodeList = Windows.Data.Xml.Dom.XmlNodeList;
using XmlElement = Windows.Data.Xml.Dom.XmlElement;

namespace Toaster
{
    public class Toasts
    {
        public int Add(int a, int b)
        {
            return a + b;
        }

        public int Sub(int a, int b)
        {
            return a - b;
        }

        public string ToastText01(string mess, string appname, int exptime)
        {
            //<toast><visual><binding template="ToastText01"><text id="1"></text></binding></visual></toast>
            try
            {
                var template = ToastNotificationManager.GetTemplateContent(ToastTemplateType.ToastText01);

                var textNodes = template.GetElementsByTagName("text");
                textNodes.Item(0).InnerText = mess;

                var notifier = ToastNotificationManager.CreateToastNotifier(appname);
                var notification = new ToastNotification(template);
                notification.ExpirationTime = DateTimeOffset.Now.AddSeconds(exptime);
                notifier.Show(notification);

                return $"{mess},{appname},{exptime},true";
            }
            catch (Exception e)
            {
                return $"{mess},{appname},{exptime},Error:{e}";
            }
        }

        public string ToastText02(string title, string mess, string appname, int exptime)
        {
            //<toast><visual><binding template="ToastText02"><text id="1">helo</text><text id="2">bello</text></binding></visual></toast>
            try
            {
                var template = ToastNotificationManager.GetTemplateContent(ToastTemplateType.ToastText02);

                var textNodes = template.GetElementsByTagName("text");
                textNodes.Item(0).InnerText = title;
                textNodes.Item(1).InnerText = mess;

                var notifier = ToastNotificationManager.CreateToastNotifier(appname);
                var notification = new ToastNotification(template);
                notification.ExpirationTime = DateTimeOffset.Now.AddSeconds(exptime);
                notifier.Show(notification);

                return $"{title},{mess},{appname},{exptime},true";
            }
            catch (Exception e)
            {
                return $"{title},{mess},{appname},{exptime},Error:{e}";
            }
        }

        public string ToastText03(string title, string mess, string appname, int exptime)
        {
            // Not Worth using due to design
            // <toast><visual><binding template="ToastText03"><text id="1"></text><text id="2"></text></binding></visual></toast>
            try
            {
                var template = ToastNotificationManager.GetTemplateContent(ToastTemplateType.ToastText03);

                var textNodes = template.GetElementsByTagName("text");
                textNodes.Item(0).InnerText = title;
                textNodes.Item(1).InnerText = mess;

                var notifier = ToastNotificationManager.CreateToastNotifier(appname);
                var notification = new ToastNotification(template);
                notification.ExpirationTime = DateTimeOffset.Now.AddSeconds(exptime);
                notifier.Show(notification);

                return $"{title},{mess},{appname},{exptime},true";
            }
            catch (Exception e)
            {
                return $"{title},{mess},{appname},{exptime},Error:{e}";
            }
        }

        public string ToastText04(string title, string mess, string messtwo, string appname, int exptime)
        {
            // Not Worth using due to design
            // <toast><visual><binding template="ToastText04"><text id="1">title</text><text id="2">my mess</text><text id="3">my mess</text></binding></visual></toast>
            try
            {
                var template = ToastNotificationManager.GetTemplateContent(ToastTemplateType.ToastText04);

                var textNodes = template.GetElementsByTagName("text");
                textNodes.Item(0).InnerText = title;
                textNodes.Item(1).InnerText = mess;
                textNodes.Item(2).InnerText = messtwo;

                var notifier = ToastNotificationManager.CreateToastNotifier(appname);
                var notification = new ToastNotification(template);
                notification.ExpirationTime = DateTimeOffset.Now.AddSeconds(exptime);
                notifier.Show(notification);

                return $"{title},{mess},{appname},{exptime},true";
            }
            catch (Exception e)
            {
                return $"{title},{mess},{appname},{exptime},Error:{e}";
            }
        }

        public string ToastImageAndText01(string mess, string iconpath, string appname, int exptime)
        {
            // <toast><visual><binding template="ToastImageAndText01"><image id="1" src="file:///python.ico" /><text id="1">title</text></binding></visual></toast>
            try
            {
                var template = ToastNotificationManager.GetTemplateContent(ToastTemplateType.ToastImageAndText01);

                XmlNodeList toastImageAttributes = template.GetElementsByTagName("image");
                ((XmlElement)toastImageAttributes[0]).SetAttribute("src", iconpath);
                ((XmlElement)toastImageAttributes[0]).SetAttribute("alt", "test");

                var textNodes = template.GetElementsByTagName("text");
                textNodes.Item(0).InnerText = mess;

                var notifier = ToastNotificationManager.CreateToastNotifier(appname);
                var notification = new ToastNotification(template);
                notification.ExpirationTime = DateTimeOffset.Now.AddSeconds(exptime);
                notifier.Show(notification);

                return $"{mess},{iconpath},{appname},{exptime},true";
            }
            catch (Exception e)
            {
                return $"{mess},{iconpath},{appname},{exptime},Error:{e}";
            }
        }

        public string ToastImageAndText02(string title, string mess, string iconpath, string appname, int exptime)
        {
            // <toast><visual><binding template="ToastImageAndText02"><image id="1" src="file:///python.ico" /><text id="1">title</text><text id="2"></text></binding></visual></toast>
            try
            {
                var template = ToastNotificationManager.GetTemplateContent(ToastTemplateType.ToastImageAndText02);

                XmlNodeList toastImageAttributes = template.GetElementsByTagName("image");
                ((XmlElement)toastImageAttributes[0]).SetAttribute("src", iconpath);
                ((XmlElement)toastImageAttributes[0]).SetAttribute("alt", "test");

                var textNodes = template.GetElementsByTagName("text");
                textNodes.Item(0).InnerText = title;
                textNodes.Item(1).InnerText = mess;

                var notifier = ToastNotificationManager.CreateToastNotifier(appname);
                var notification = new ToastNotification(template);
                notification.ExpirationTime = DateTimeOffset.Now.AddSeconds(exptime);
                notifier.Show(notification);

                return $"{title},{mess},{iconpath},{appname},{exptime},true";
            }
            catch (Exception e)
            {
                return $"{title},{mess},{iconpath},{appname},{exptime},Error:{e}";
            }
        }

        public string ToastImageAndText03(string title, string mess, string iconpath, string appname, int exptime)
        {
            // <toast><visual><binding template="ToastImageAndText03"><image id="1" src="file:///python.ico" /><text id="1">title</text><text id="2"></text></binding></visual></toast>
            try
            {
                var template = ToastNotificationManager.GetTemplateContent(ToastTemplateType.ToastImageAndText03);

                XmlNodeList toastImageAttributes = template.GetElementsByTagName("image");
                ((XmlElement)toastImageAttributes[0]).SetAttribute("src", iconpath);
                ((XmlElement)toastImageAttributes[0]).SetAttribute("alt", "test");

                var textNodes = template.GetElementsByTagName("text");
                textNodes.Item(0).InnerText = title;
                textNodes.Item(1).InnerText = mess;

                var notifier = ToastNotificationManager.CreateToastNotifier(appname);
                var notification = new ToastNotification(template);
                notification.ExpirationTime = DateTimeOffset.Now.AddSeconds(exptime);
                notifier.Show(notification);

                return $"{title},{mess},{iconpath},{appname},{exptime},true";
            }
            catch (Exception e)
            {
                return $"{title},{mess},{iconpath},{appname},{exptime},Error:{e}";
            }
        }

        public string ToastImageAndText04(string title, string mess, string messtwo, string iconpath, string appname, int exptime)
        {
            // <toast><visual><binding template="ToastImageAndText04"><image id="1" src="file:///python.ico" /><text id="1">title</text><text id="2"></text><text id="3"></text></binding></visual></toast>
            try
            {
                var template = ToastNotificationManager.GetTemplateContent(ToastTemplateType.ToastImageAndText04);

                XmlNodeList toastImageAttributes = template.GetElementsByTagName("image");
                ((XmlElement)toastImageAttributes[0]).SetAttribute("src", iconpath);
                ((XmlElement)toastImageAttributes[0]).SetAttribute("alt", "test");

                var textNodes = template.GetElementsByTagName("text");
                textNodes.Item(0).InnerText = title;
                textNodes.Item(1).InnerText = mess;
                textNodes.Item(2).InnerText = messtwo;

                var notifier = ToastNotificationManager.CreateToastNotifier(appname);
                var notification = new ToastNotification(template);
                notification.ExpirationTime = DateTimeOffset.Now.AddSeconds(exptime);
                notifier.Show(notification);

                return $"{title},{mess},{messtwo},{iconpath},{appname},{exptime},true";
            }
            catch (Exception e)
            {
                return $"{title},{mess},{messtwo},{iconpath},{appname},{exptime},Error:{e}";
            }
        }

    }
}
