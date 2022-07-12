// Copyright © 2021 Saleem Abdulrasool <compnerd@compnerd.org>
// SPDX-License-Identifier: BSD-3

import CWinRT
import WinRT

@main
class WinRTDemo {
  public static func main() throws {
    try RoInitialize()

    let doc = try Windows.Data.Xml.Dom.XmlDocument()
    let s = 
#"""
<toast activationType="protocol" launch="imsprevn://0" duration="long">
  <visual>
    <binding template="ToastGeneric">
      <text><![CDATA[Hello, world]]></text>
      <text><![CDATA[Click me]]></text>
      <text placement="attribution"><![CDATA[Bottom text]]></text>
    </binding>
  </visual>
  <audio src="ms-winsoundevent:Notification.Mail" loop="false" />
</toast>
"""#
    try doc.LoadXml(xml: s)
    let toast = try Windows.UI.Notifications.ToastNotification(content: doc)
    let notifier = try Windows.UI.Notifications.ToastNotificationManager.CreateToastNotifier(applicationId: "VisualStudio.3ca2c57a")!
    try notifier.Show(notification: toast);
    Sleep(1)
  }
}

