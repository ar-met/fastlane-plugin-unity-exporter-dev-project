# expects the following hierarchy
# root/ 
#   |-- fastlane-plugin-unity-exporter/
#   |-- fastlane-plugin-unity-exporter-package/
#   |-- fastlane-plugin-unity-exporter-project/

cd ..
cd fastlane-plugin-unity-exporter/fastlane-plugin-unity_exporter
rake release
cd ..
cd ..
cd fastlane-plugin-unity-exporter-project/fastlane-unity-exporter/iOS
bundle exec fastlane install_plugins
bundle exec fastlane custom_lane