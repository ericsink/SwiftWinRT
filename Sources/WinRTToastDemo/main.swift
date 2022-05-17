// Copyright © 2021 Saleem Abdulrasool <compnerd@compnerd.org>
// SPDX-License-Identifier: BSD-3

import CWinRT
import WinRT

@main
class WinRTDemo {
  public static func main() throws {
    try RoInitialize()

    let doc : Windows.Data.Xml.Dom.IXmlDocument = 
        try RoActivateInstance(HString("Windows.Data.Xml.Dom.XmlDocument"));
    let docIO : Windows.Data.Xml.Dom.IXmlDocumentIO = 
        try doc.QueryInterface();
    let s = "<toast activationType=\"protocol\" launch=\"imsprevn://0\" duration=\"long\">\r\n <visual>\r\n <binding template=\"ToastGeneric\">\r\n <text><![CDATA[Hello, world]]></text>\r\n <text><![CDATA[Click me]]></text>\r\n <text placement=\"attribution\"><![CDATA[Bottom text]]></text>\r\n </binding>\r\n </visual>\r\n <audio src=\"ms-winsoundevent:Notification.Mail\" loop=\"false\" />\r\n </toast>\r\n"
    try docIO.LoadXml(xml: s)
    let appid = "VisualStudio.3ca2c57a"
    let notificationFactory : Windows.UI.Notifications.IToastNotificationFactory = 
        try RoGetActivationFactory(HString("Windows.UI.Notifications.ToastNotification"))
    let toast = try notificationFactory.CreateToastNotification(content: doc)
    let notifier = try Windows.UI.Notifications.ToastNotificationManagerStatics.CreateToastNotifierWithId(applicationId: appid)!
    try notifier.Show(notification: toast);
    Sleep(1)
  }
}

