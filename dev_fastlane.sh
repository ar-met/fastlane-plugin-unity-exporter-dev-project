# expects the following hierarchy
# root/ 
#   |-- fastlane-plugin-unity-exporter/
#   |-- fastlane-plugin-unity-exporter-package/
#   |-- fastlane-plugin-unity-exporter-project/

cd ..
cd fastlane-plugin-unity-exporter
rake release
cd ..
cd fastlane-plugin-unity-exporter-dev-project/fastlane-build-exporter/iOS
bundle exec fastlane install_plugins
bundle exec fastlane custom_lane