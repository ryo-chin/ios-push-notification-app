# Uncomment the next line to define a global platform for your project
 platform :ios, '9.0'

target 'PushNotificationApp' do
  # Comment the next line if you don't want to use dynamic frameworks
  use_frameworks!

  # Pods for PushNotificationApp
  # https://firebase.google.com/docs/ios/setup#available-pods
  pod 'Firebase/Analytics', '6.11.0' # https://firebase.google.com/support/release-notes/ios#version_6120_-_november_5_2019
  pod 'FirebaseAuth', '6.0.0' # バージョンかの噛み合わせ的になのか、6.1.0だとなぜかredirecUriMismatchで落ちる

  target 'PushNotificationAppTests' do
    inherit! :search_paths
    # Pods for testing
  end

  target 'PushNotificationAppUITests' do
    # Pods for testing
  end

end
