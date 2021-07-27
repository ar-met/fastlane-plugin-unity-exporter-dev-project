# expects the following hierarchy
# root/ 
#   |-- fastlane-plugin-unity-exporter/
#   |-- unity-build-exporter/
#   |-- fastlane-plugin-unity-exporter-dev-project/

cd ..
cd fastlane-plugin-unity-exporter
rake install
cd ..
cd fastlane-plugin-unity-exporter-dev-project/fastlane-build-exporter/Android
bundle exec fastlane install_plugins
bundle exec fastlane custom_lane