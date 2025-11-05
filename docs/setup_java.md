# Javaのパスを通す

## JDKのパス

Android StudioにバンドルされているJavaを使用する。

![AndroidStudioの設定](./setup_java/androidstudio_settings.png)

## 環境設定

fishを使っているのでconfig.fishに以下追加する。

```
set -x JAVA_HOME "/Applications/Android Studio Latest.app/Contents/jbr/Contents/Home"
```
