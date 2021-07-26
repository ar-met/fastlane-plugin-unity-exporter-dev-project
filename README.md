# fastlane plugin unity dev project

This Unity project can be used for local development of the [_fastlane-plugin-unity-exporter_](https://github.com/ar-met/fastlane-plugin-unity-exporter). Note that this project has two existing _fastlane_ setups -- one for iOS and one for Android. These are not linked to an actual app in any store and are only used for development purposes. Find the _fastlane_ setups in:
* [iOS fastlane](./fastlane-build-exporter/iOS)
* [Android fastlane](./fastlane-build-exporter/Android)


## Local references

Note that this project expects the following hierarchy:

```
root
  |-- fastlane-plugin-unity-exporter [0]
  |-- unity-build-exporter [1]
  |-- fastlane-plugin-unity-exporter-dev-project (this repository)
```

[[0]](https://github.com/ar-met/fastlane-plugin-unity-exporter)[[1]](https://github.com/ar-met/unity-build-exporter)

Local relative references to the [_fastlane-plugin-unity-exporter_](https://github.com/ar-met/fastlane-plugin-unity-exporter) exist in:
* [iOS fastlane Pluginfile](./fastlane-build-exporter/iOS/fastlane/Pluginfile)
* [Android fastlane Pluginfile](./fastlane-build-exporter/Android/fastlane/Pluginfile)

Local relative references to [_unity-build-exporter_](https://github.com/ar-met/unity-build-exporter) exist in:
* [Unity package manifest](./Packages/manifest.json)


## Development and testing of changes

When making changes to _fastlane-plugin-unity-exporter_ a new _gem_ must be built. This new _gem_ must then be re-installed by this project's _fastlane_ setups. To test specific lane arguments adjust these _Fastfiles_:
* [iOS Fastfile](./fastlane-build-exporter/iOS/fastlane/Fastfile)
* [Android Fastfile](./fastlane-build-exporter/Android/fastlane/Fastfile)

Note that making changes to _unity-build-exporter_ will automatically trigger a re-build as any change to a script would. No further steps are necessary to apply changes made to _unity-build-exporter_.

### Summing it up
1) build a new _gem_ for _fastlane-plugin-unity-exporter_
2) re-install the new _gem_
3) start a lane

The shell script [dev_fastlane.sh](./dev_fastlane.sh) executes all these steps for you.

