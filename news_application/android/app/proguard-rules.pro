# Add project specific ProGuard rules here.
# By default, the flags in this file are appended to flags specified
# in /usr/local/android-sdk/tools/proguard/proguard-android.txt
# You can edit the include path and order by changing the proguardFiles
# directive in build.gradle.

# For more details, see http://developer.android.com/guide/developing/tools/proguard.html

# Add any project specific keep options here:
# If your project uses WebView with JS, uncomment the following
# and specify the fully qualified class name to the JavaScript interface class:
#-keepclassmembers class fqcn.of.javascript.interface.for.webview {
#   public *;
#}

# Keep all Flutter classes
-keep class io.flutter.app.** { *; }
-keep class io.flutter.plugin.** { *; }
-keep class io.flutter.util.** { *; }
-keep class io.flutter.view.** { *; }
-keep class io.flutter.embedding.** { *; }
-keep class io.flutter.embedding.engine.** { *; }
-keep class io.flutter.embedding.android.** { *; }
-keep class io.flutter.embedding.engine.** { *; }
-keep class io.flutter.embedding.engine.systemchannels.** { *; }
-keep class io.flutter.embedding.engine.dart.** { *; }
-keep class io.flutter.plugin.common.** { *; }
-keep class io.flutter.plugin.platform.** { *; }
-keep class io.flutter.plugin.editing.** { *; }
-keep class io.flutter.plugin.localization.** { *; }
-keep class io.flutter.plugin.mouse.** { *; }
-keep class io.flutter.plugin.platform.** { *; }
-keep class io.flutter.plugin.pluginregistry.** { *; }
-keep class io.flutter.plugin.pluginsupport.** { *; }
-keep class io.flutter.plugin.rendering.** { *; }
-keep class io.flutter.plugin.state.** { *; }
-keep class io.flutter.plugin.surface.** { *; }
-keep class io.flutter.plugin.textinput.** { *; }
-keep class io.flutter.plugin.webview.** { *; }

# Keep classes needed by Flutter
-keep class androidx.lifecycle.** { *; }
-keep class androidx.annotation.** { *; }
-keep class androidx.core.app.** { *; }
-keep class androidx.core.content.** { *; }
-keep class androidx.core.content.res.** { *; }
-keep class androidx.core.graphics.drawable.** { *; }
-keep class androidx.core.os.** { *; }
-keep class androidx.core.util.** { *; }
-keep class androidx.core.view.** { *; }
-keep class androidx.core.widget.** { *; }
-keep class androidx.core.text.** { *; }
-keep class androidx.core.graphics.** { *; }

# Keep data classes used for JSON (e.g., Retrofit, Gson)
-keepclassmembers class * {
    @com.google.gson.annotations.SerializedName <fields>;
}
