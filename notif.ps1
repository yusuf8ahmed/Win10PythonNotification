Function ToastText01
{
    Param ([string]$mess, [string]$mana, [int]$exptime)

    [Windows.UI.Notifications.ToastNotificationManager, Windows.UI.Notifications, ContentType = WindowsRuntime] > $null

    #<toast><visual><binding template="ToastText01"><text id="1"></text></binding></visual></toast>
    #https://docs.microsoft.com/en-us/uwp/api/windows.ui.notifications/images/toast_1.png?view=winrt-18362
    $template = [Windows.UI.Notifications.ToastNotificationManager]::GetTemplateContent([Windows.UI.Notifications.ToastTemplateType]::ToastText01)

    #Convert to .NET type for XML manipuration
    $toastXml = [xml] $template.GetXml()
    $toastXml.SelectSingleNode("toast/visual/binding/text[@id=1]").AppendChild($toastXml.CreateTextNode($mess)) > $null
    
    #Convert back to WinRT type
    $xml = New-Object Windows.Data.Xml.Dom.XmlDocument
    $xml.LoadXml($toastXml.OuterXml)

    $grumpymsg = [Windows.UI.Notifications.ToastNotification]::new($xml)
    $grumpymsg.ExpirationTime = [DateTimeOffset]::Now.AddSeconds($exptime)
    $grumpymsg.Tag = $mana
    $grumpymsg.Group = $mana

    $notice = [Windows.UI.Notifications.ToastNotificationManager]::CreateToastNotifier($mana)
    $notice.Show($grumpymsg)
}

Function ToastText02
{
    Param ([string]$title, [string]$mess, [string]$mana, [int]$exptime)

    [Windows.UI.Notifications.ToastNotificationManager, Windows.UI.Notifications, ContentType = WindowsRuntime] > $null

    #<toast><visual><binding template="ToastText02"><text id="1">helo</text><text id="2">bello</text></binding></visual></toast>
    #https://docs.microsoft.com/en-us/uwp/api/windows.ui.notifications/images/toast_2.png?view=winrt-18362    
    $template = [Windows.UI.Notifications.ToastNotificationManager]::GetTemplateContent([Windows.UI.Notifications.ToastTemplateType]::ToastText02)

    #Convert to .NET type for XML manipuration
    $toastXml = [xml] $template.GetXml()
    $toastXml.SelectSingleNode("toast/visual/binding/text[@id=1]").AppendChild($toastXml.CreateTextNode($title)) > $null
    $toastXml.SelectSingleNode("toast/visual/binding/text[@id=2]").AppendChild($toastXml.CreateTextNode($mess)) > $null

    #Convert back to WinRT type
    $xml = New-Object Windows.Data.Xml.Dom.XmlDocument
    $xml.LoadXml($toastXml.OuterXml)

    $grumpymsg = [Windows.UI.Notifications.ToastNotification]::new($xml)
    $grumpymsg.ExpirationTime = [DateTimeOffset]::Now.AddSeconds($exptime)
    $grumpymsg.Tag = $mana
    $grumpymsg.Group = $mana

    $notice = [Windows.UI.Notifications.ToastNotificationManager]::CreateToastNotifier($mana)
    $notice.Show($grumpymsg)
}

Function ToastText03
{
    Param ([string]$title, [string]$mess, [string]$mana, [int]$exptime)
    #Not Worth using due to design

    [Windows.UI.Notifications.ToastNotificationManager, Windows.UI.Notifications, ContentType = WindowsRuntime] > $null

    #<toast><visual><binding template="ToastText03"><text id="1"></text><text id="2"></text></binding></visual></toast>
    #https://docs.microsoft.com/en-us/uwp/api/windows.ui.notifications/images/toast_4.png?view=winrt-18362
    $template = [Windows.UI.Notifications.ToastNotificationManager]::GetTemplateContent([Windows.UI.Notifications.ToastTemplateType]::ToastText03)

    #Convert to .NET type for XML manipuration
    $toastXml = [xml] $template.GetXml()
    $toastXml.SelectSingleNode("toast/visual/binding/text[@id=1]").AppendChild($toastXml.CreateTextNode($title + "`r`n" + $title)) > $null
    $toastXml.SelectSingleNode("toast/visual/binding/text[@id=2]").AppendChild($toastXml.CreateTextNode($mess)) > $null

    #Convert back to WinRT type
    $xml = New-Object Windows.Data.Xml.Dom.XmlDocument
    $xml.LoadXml($toastXml.OuterXml)

    Write-Output $toastXml.OuterXml

    $grumpymsg = [Windows.UI.Notifications.ToastNotification]::new($xml)
    $grumpymsg.ExpirationTime = [DateTimeOffset]::Now.AddSeconds($exptime)
    $grumpymsg.Tag = $mana
    $grumpymsg.Group = $mana

    $notice = [Windows.UI.Notifications.ToastNotificationManager]::CreateToastNotifier($mana)
    $notice.Show($grumpymsg) 
}

Function ToastText04
{
    Param ([string]$title, [string]$mess, [string]$mana, [int]$exptime)
    #Not Worth using due to design

    [Windows.UI.Notifications.ToastNotificationManager, Windows.UI.Notifications, ContentType = WindowsRuntime] > $null

    #<toast><visual><binding template="ToastText04"><text id="1">title</text><text id="2">my mess</text><text id="3">my mess</text></binding></visual></toast>
    #https://docs.microsoft.com/en-us/uwp/api/windows.ui.notifications/images/toast_5.png?view=winrt-18362
    $template = [Windows.UI.Notifications.ToastNotificationManager]::GetTemplateContent([Windows.UI.Notifications.ToastTemplateType]::ToastText04)

    #Convert to .NET type for XML manipuration
    $toastXml = [xml] $template.GetXml()
    $toastXml.SelectSingleNode("toast/visual/binding/text[@id=1]").AppendChild($toastXml.CreateTextNode($title)) > $null
    $toastXml.SelectSingleNode("toast/visual/binding/text[@id=2]").AppendChild($toastXml.CreateTextNode($mess)) > $null
    $toastXml.SelectSingleNode("toast/visual/binding/text[@id=3]").AppendChild($toastXml.CreateTextNode($mess)) > $null

    #Convert back to WinRT type
    $xml = New-Object Windows.Data.Xml.Dom.XmlDocument
    $xml.LoadXml($toastXml.OuterXml)

    Write-Output $toastXml.OuterXml

    $grumpymsg = [Windows.UI.Notifications.ToastNotification]::new($xml)
    $grumpymsg.ExpirationTime = [DateTimeOffset]::Now.AddSeconds($exptime)
    $grumpymsg.Tag = $mana
    $grumpymsg.Group = $mana

    $notice = [Windows.UI.Notifications.ToastNotificationManager]::CreateToastNotifier($mana)
    $notice.Show($grumpymsg)
}

Function ToastImageAndText01
{
    Param ([string]$title, [string]$mess, [string]$full_icon_path , [string]$mana, [int]$exptime)

    [Windows.UI.Notifications.ToastNotificationManager, Windows.UI.Notifications, ContentType = WindowsRuntime] > $null

    $template = [Windows.UI.Notifications.ToastNotificationManager]::GetTemplateContent([Windows.UI.Notifications.ToastTemplateType]::ToastImageAndText01)
    #<toast><visual><binding template="ToastImageAndText01"><image id="1" src="file:///python.ico" /><text id="1">title</text></binding></visual></toast>
    #https://docs.microsoft.com/en-us/uwp/api/windows.ui.notifications/images/toast_6.png?view=winrt-18362

    #Convert to .NET type for XML manipuration
    $toastXml = [xml] $template.GetXml()
    $toastXml.SelectSingleNode("toast/visual/binding/text").AppendChild($toastXml.CreateTextNode($title)) > $null
    $toastXml.SelectSingleNode("toast/visual/binding/image").SetAttribute("src", 'file:///' + $full_icon_path)

    #Convert back to WinRT type
    $xml = New-Object Windows.Data.Xml.Dom.XmlDocument
    $xml.LoadXml($toastXml.OuterXml)

    $grumpymsg = [Windows.UI.Notifications.ToastNotification]::new($xml)
    $grumpymsg.ExpirationTime = [DateTimeOffset]::Now.AddSeconds($exptime)
    $grumpymsg.Tag = $mana
    $grumpymsg.Group = $mana

    $notice = [Windows.UI.Notifications.ToastNotificationManager]::CreateToastNotifier($mana)
    $notice.Show($grumpymsg)
}

Function ToastImageAndText02
{
    Param ([string]$title, [string]$mess, [string]$full_icon_path , [string]$mana, [int]$exptime)

    [Windows.UI.Notifications.ToastNotificationManager, Windows.UI.Notifications, ContentType = WindowsRuntime] > $null

    $template = [Windows.UI.Notifications.ToastNotificationManager]::GetTemplateContent([Windows.UI.Notifications.ToastTemplateType]::ToastImageAndText02)
    #<toast><visual><binding template="ToastImageAndText02"><image id="1" src="file:///python.ico" /><text id="1">title</text><text id="2"></text></binding></visual></toast>
    #https://docs.microsoft.com/en-us/uwp/api/windows.ui.notifications/images/toast_7.png?view=winrt-18362

    #Convert to .NET type for XML manipuration
    $toastXml = [xml] $template.GetXml()
    $toastXml.SelectSingleNode("toast/visual/binding/text[@id=1]").AppendChild($toastXml.CreateTextNode($title)) > $null
    $toastXml.SelectSingleNode("toast/visual/binding/text[@id=2]").AppendChild($toastXml.CreateTextNode($mess)) > $null
    $toastXml.SelectSingleNode("toast/visual/binding/image").SetAttribute("src", 'file:///' + $full_icon_path)

    #Convert back to WinRT type
    $xml = New-Object Windows.Data.Xml.Dom.XmlDocument
    $xml.LoadXml($toastXml.OuterXml)

    $grumpymsg = [Windows.UI.Notifications.ToastNotification]::new($xml)
    $grumpymsg.ExpirationTime = [DateTimeOffset]::Now.AddSeconds($exptime)
    $grumpymsg.Tag = $mana
    $grumpymsg.Group = $mana

    $notice = [Windows.UI.Notifications.ToastNotificationManager]::CreateToastNotifier($mana)
    $notice.Show($grumpymsg)
}

Function ToastImageAndText03
{
    Param ([string]$title, [string]$mess, [string]$full_icon_path , [string]$mana, [int]$exptime)
    #Not Worth using due to design

    [Windows.UI.Notifications.ToastNotificationManager, Windows.UI.Notifications, ContentType = WindowsRuntime] > $null

    #<toast><visual><binding template="ToastImageAndText03"><image id="1" src="file:///python.ico" /><text id="1">title</text><text id="2"></text></binding></visual></toast>
    #https://docs.microsoft.com/en-us/uwp/api/windows.ui.notifications/images/toast_8.png?view=winrt-18362
    $template = [Windows.UI.Notifications.ToastNotificationManager]::GetTemplateContent([Windows.UI.Notifications.ToastTemplateType]::ToastImageAndText03)


    #Convert to .NET type for XML manipuration
    $toastXml = [xml] $template.GetXml()
    $toastXml.SelectSingleNode("toast/visual/binding/text[@id=1]").AppendChild($toastXml.CreateTextNode($title)) > $null
    $toastXml.SelectSingleNode("toast/visual/binding/text[@id=2]").AppendChild($toastXml.CreateTextNode($mess)) > $null
    $toastXml.SelectSingleNode("toast/visual/binding/image").SetAttribute("src", 'file:///' + $full_icon_path)

    #Convert back to WinRT type
    $xml = New-Object Windows.Data.Xml.Dom.XmlDocument
    $xml.LoadXml($toastXml.OuterXml)

    $grumpymsg = [Windows.UI.Notifications.ToastNotification]::new($xml)
    $grumpymsg.ExpirationTime = [DateTimeOffset]::Now.AddSeconds($exptime)
    $grumpymsg.Tag = $mana
    $grumpymsg.Group = $mana

    $notice = [Windows.UI.Notifications.ToastNotificationManager]::CreateToastNotifier($mana)
    $notice.Show($grumpymsg)
}

Function ToastImageAndText04
{
    Param ([string]$title, [string]$mess, [string]$full_icon_path , [string]$mana, [int]$exptime)
    #Not Worth using due to design

    [Windows.UI.Notifications.ToastNotificationManager, Windows.UI.Notifications, ContentType = WindowsRuntime] > $null

    $template = [Windows.UI.Notifications.ToastNotificationManager]::GetTemplateContent([Windows.UI.Notifications.ToastTemplateType]::ToastImageAndText04)
    #<toast><visual><binding template="ToastImageAndText04"><image id="1" src="file:///python.ico" /><text id="1">title</text><text id="2"></text><text id="3"></text></binding></visual></toast>
    #https://docs.microsoft.com/en-us/uwp/api/windows.ui.notifications/images/toastimageandtext04.png?view=winrt-18362

    #Convert to .NET type for XML manipuration
    $toastXml = [xml] $template.GetXml()
    $toastXml.SelectSingleNode("toast/visual/binding/text[@id=1]").AppendChild($toastXml.CreateTextNode($title)) > $null
    $toastXml.SelectSingleNode("toast/visual/binding/text[@id=2]").AppendChild($toastXml.CreateTextNode($mess)) > $null
    $toastXml.SelectSingleNode("toast/visual/binding/text[@id=3]").AppendChild($toastXml.CreateTextNode($mess)) > $null
    $toastXml.SelectSingleNode("toast/visual/binding/image").SetAttribute("src", 'file:///' + $full_icon_path)

    #Convert back to WinRT type
    $xml = New-Object Windows.Data.Xml.Dom.XmlDocument
    $xml.LoadXml($toastXml.OuterXml)

    $grumpymsg = [Windows.UI.Notifications.ToastNotification]::new($xml)
    $grumpymsg.ExpirationTime = [DateTimeOffset]::Now.AddSeconds($exptime)
    $grumpymsg.Tag = $mana
    $grumpymsg.Group = $mana

    $notice = [Windows.UI.Notifications.ToastNotificationManager]::CreateToastNotifier($mana)
    $notice.Show($grumpymsg)
}

#ToastText01 'hello' 'python' 20