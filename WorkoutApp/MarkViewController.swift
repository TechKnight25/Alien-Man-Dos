import UIKit
import Firebase
import FirebaseCore
import FirebaseMessaging
import UserNotifications
class MarkViewController: UIViewController , UIApplicationDelegate, UNUserNotificationCenterDelegate, MessagingDelegate
{
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    func application(application: UIApplication) {
    if #available(iOS 10.0, *) {
    // For iOS 10 display notification (sent via APNS)
    UNUserNotificationCenter.current().delegate = self
    let authOptions: UNAuthorizationOptions = [.alert, .badge, .sound]
    UNUserNotificationCenter.current().requestAuthorization(
    options: authOptions,
    completionHandler: {_, _ in })
    // For iOS 10 data message (sent via FCM
    Messaging.messaging().remoteMessageDelegate = self
    } else {
    let settings: UIUserNotificationSettings =
    UIUserNotificationSettings(types: [.alert, .badge, .sound], categories: nil)
    application.registerUserNotificationSettings(settings)
    }
    
    application.registerForRemoteNotifications()
    
    FirebaseApp.configure()
    Messaging.messaging().delegate = self
}
    func messaging(_ messaging: Messaging, didReceiveRegistrationToken fcmToken: String) {
        let token = Messaging.messaging().fcmToken
        print("FCM token: \(token ?? "")")
    }
    func application(application: UIApplication,
                     didRegisterForRemoteNotificationsWithDeviceToken deviceToken: NSData) {
        Messaging.messaging().apnsToken = deviceToken as Data
    }
}
