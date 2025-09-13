
# List devices
adb devices

# Find the app package name:
adb shell pm list packages | grep "app_name"

# Uninstall the app:
adb shell pm uninstall --user 0 com.package.name
