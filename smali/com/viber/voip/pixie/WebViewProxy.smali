.class public Lcom/viber/voip/pixie/WebViewProxy;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/viber/voip/pixie/WebViewProxy;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/pixie/WebViewProxy;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getFieldValueSafely(Ljava/lang/reflect/Field;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 294
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->isAccessible()Z

    move-result v0

    .line 295
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 296
    invoke-virtual {p0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 297
    invoke-virtual {p0, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 298
    return-object v1
.end method

.method private static log(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 302
    const/4 v0, 0x3

    invoke-static {v0, p0, p1}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 303
    return-void
.end method

.method public static setProxy(Landroid/webkit/WebView;Ljava/lang/String;I)Z
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 28
    sget-object v0, Lcom/viber/voip/pixie/WebViewProxy;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setting proxy to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/webkit/WebView;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/viber/voip/pixie/WebViewProxy;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xd

    if-gt v0, v1, :cond_0

    .line 31
    invoke-static {p0, p1, p2}, Lcom/viber/voip/pixie/WebViewProxy;->setProxyUpToHC(Landroid/webkit/WebView;Ljava/lang/String;I)Z

    move-result v0

    .line 43
    :goto_0
    return v0

    .line 34
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xf

    if-gt v0, v1, :cond_1

    .line 35
    invoke-static {p0, p1, p2}, Lcom/viber/voip/pixie/WebViewProxy;->setProxyICS(Landroid/webkit/WebView;Ljava/lang/String;I)Z

    move-result v0

    goto :goto_0

    .line 38
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-gt v0, v1, :cond_2

    .line 39
    invoke-static {p0, p1, p2}, Lcom/viber/voip/pixie/WebViewProxy;->setProxyJB(Landroid/webkit/WebView;Ljava/lang/String;I)Z

    move-result v0

    goto :goto_0

    .line 43
    :cond_2
    const-string/jumbo v0, "com.viber.voip.ViberApplication"

    invoke-static {p0, p1, p2, v0}, Lcom/viber/voip/pixie/WebViewProxy;->setProxyKK(Landroid/webkit/WebView;Ljava/lang/String;ILjava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method private static setProxyICS(Landroid/webkit/WebView;Ljava/lang/String;I)Z
    .locals 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 118
    :try_start_0
    sget-object v2, Lcom/viber/voip/pixie/WebViewProxy;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "Setting proxy with 4.0 API."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    const-string/jumbo v2, "android.webkit.JWebCoreJavaBridge"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 121
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    .line 122
    const/4 v4, 0x0

    const-string/jumbo v5, "android.net.ProxyProperties"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    aput-object v5, v3, v4

    .line 123
    const-string/jumbo v4, "updateProxy"

    invoke-virtual {v2, v4, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 125
    const-string/jumbo v3, "android.webkit.WebView"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 126
    const-string/jumbo v4, "mWebViewCore"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 127
    invoke-static {v3, p0}, Lcom/viber/voip/pixie/WebViewProxy;->getFieldValueSafely(Ljava/lang/reflect/Field;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 129
    const-string/jumbo v4, "android.webkit.WebViewCore"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 130
    const-string/jumbo v5, "mBrowserFrame"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 131
    invoke-static {v4, v3}, Lcom/viber/voip/pixie/WebViewProxy;->getFieldValueSafely(Ljava/lang/reflect/Field;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 133
    const-string/jumbo v4, "android.webkit.BrowserFrame"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 134
    const-string/jumbo v5, "sJavaBridge"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 135
    invoke-static {v4, v3}, Lcom/viber/voip/pixie/WebViewProxy;->getFieldValueSafely(Ljava/lang/reflect/Field;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 137
    const-string/jumbo v4, "android.net.ProxyProperties"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 138
    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Class;

    .line 139
    const/4 v6, 0x0

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    .line 140
    const/4 v6, 0x1

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    .line 141
    const/4 v6, 0x2

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    .line 142
    invoke-virtual {v4, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    .line 144
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p1, v7, v8

    const/4 v8, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    const/4 v9, 0x0

    aput-object v9, v7, v8

    invoke-virtual {v4, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v5, v6

    invoke-virtual {v2, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    sget-object v2, Lcom/viber/voip/pixie/WebViewProxy;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "Setting proxy with 4.0 API successful!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    :goto_0
    return v0

    .line 149
    :catch_0
    move-exception v0

    .line 151
    sget-object v2, Lcom/viber/voip/pixie/WebViewProxy;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "failed to set HTTP proxy: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 152
    goto :goto_0
.end method

.method private static setProxyJB(Landroid/webkit/WebView;Ljava/lang/String;I)Z
    .locals 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 161
    sget-object v2, Lcom/viber/voip/pixie/WebViewProxy;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "Setting proxy with 4.1 - 4.3 API."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    :try_start_0
    const-string/jumbo v2, "android.webkit.WebViewClassic"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 165
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    .line 166
    const/4 v4, 0x0

    const-string/jumbo v5, "android.webkit.WebView"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    aput-object v5, v3, v4

    .line 167
    const-string/jumbo v4, "fromWebView"

    invoke-virtual {v2, v4, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 168
    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 170
    const-string/jumbo v3, "android.webkit.WebViewClassic"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 171
    const-string/jumbo v4, "mWebViewCore"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 172
    invoke-static {v3, v2}, Lcom/viber/voip/pixie/WebViewProxy;->getFieldValueSafely(Ljava/lang/reflect/Field;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 174
    const-string/jumbo v3, "android.webkit.WebViewCore"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 175
    const-string/jumbo v4, "mBrowserFrame"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 176
    invoke-static {v3, v2}, Lcom/viber/voip/pixie/WebViewProxy;->getFieldValueSafely(Ljava/lang/reflect/Field;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 178
    const-string/jumbo v3, "android.webkit.BrowserFrame"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 179
    const-string/jumbo v4, "sJavaBridge"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 180
    invoke-static {v3, v2}, Lcom/viber/voip/pixie/WebViewProxy;->getFieldValueSafely(Ljava/lang/reflect/Field;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 182
    const-string/jumbo v3, "android.net.ProxyProperties"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 183
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Class;

    .line 184
    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    .line 185
    const/4 v5, 0x1

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    .line 186
    const/4 v5, 0x2

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    .line 187
    invoke-virtual {v3, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    .line 189
    const-string/jumbo v4, "android.webkit.JWebCoreJavaBridge"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 190
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    .line 191
    const/4 v6, 0x0

    const-string/jumbo v7, "android.net.ProxyProperties"

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    aput-object v7, v5, v6

    .line 192
    const-string/jumbo v6, "updateProxy"

    invoke-virtual {v4, v6, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 194
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p1, v7, v8

    const/4 v8, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    const/4 v9, 0x0

    aput-object v9, v7, v8

    invoke-virtual {v3, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v5, v6

    invoke-virtual {v4, v2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    sget-object v1, Lcom/viber/voip/pixie/WebViewProxy;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "Setting proxy with 4.1 - 4.3 API successful!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    :goto_0
    return v0

    .line 195
    :catch_0
    move-exception v0

    .line 196
    sget-object v2, Lcom/viber/voip/pixie/WebViewProxy;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Setting proxy with >= 4.1 API failed with error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 197
    goto :goto_0
.end method

.method private static setProxyKK(Landroid/webkit/WebView;Ljava/lang/String;ILjava/lang/String;)Z
    .locals 12
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 208
    sget-object v0, Lcom/viber/voip/pixie/WebViewProxy;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "Setting proxy with >= 4.4 API."

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    invoke-virtual {p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 211
    const-string/jumbo v0, "http.proxyHost"

    invoke-static {v0, p1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 212
    const-string/jumbo v0, "http.proxyPort"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 213
    const-string/jumbo v0, "https.proxyHost"

    invoke-static {v0, p1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 214
    const-string/jumbo v0, "https.proxyPort"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 216
    :try_start_0
    invoke-static {p3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 217
    const-string/jumbo v4, "mLoadedApk"

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 218
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 219
    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 220
    const-string/jumbo v4, "android.app.LoadedApk"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 221
    const-string/jumbo v5, "mReceivers"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 222
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 223
    invoke-virtual {v4, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 224
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 225
    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 226
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 227
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "ProxyChangeListener"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 228
    const-string/jumbo v7, "onReceive"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Landroid/content/Context;

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const-class v10, Landroid/content/Intent;

    aput-object v10, v8, v9

    invoke-virtual {v0, v7, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 229
    new-instance v8, Landroid/content/Intent;

    const-string/jumbo v0, "android.intent.action.PROXY_CHANGE"

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 232
    const-string/jumbo v0, "android.net.ProxyProperties"

    .line 233
    const-string/jumbo v0, "android.net.ProxyProperties"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 234
    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Class;

    const/4 v10, 0x0

    const-class v11, Ljava/lang/String;

    aput-object v11, v9, v10

    const/4 v10, 0x1

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const-class v11, Ljava/lang/String;

    aput-object v11, v9, v10

    invoke-virtual {v0, v9}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 235
    const/4 v9, 0x1

    invoke-virtual {v0, v9}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 236
    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object p1, v9, v10

    const/4 v10, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const/4 v11, 0x0

    aput-object v11, v9, v10

    invoke-virtual {v0, v9}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 237
    const-string/jumbo v9, "proxy"

    check-cast v0, Landroid/os/Parcelable;

    invoke-virtual {v8, v9, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 240
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v3, v0, v9

    const/4 v9, 0x1

    aput-object v8, v0, v9

    invoke-virtual {v7, v6, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_6

    goto/16 :goto_0

    .line 247
    :catch_0
    move-exception v0

    .line 248
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 249
    new-instance v3, Ljava/io/PrintWriter;

    invoke-direct {v3, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v0, v3}, Ljava/lang/ClassNotFoundException;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 250
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    .line 251
    sget-object v3, Lcom/viber/voip/pixie/WebViewProxy;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    sget-object v0, Lcom/viber/voip/pixie/WebViewProxy;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    move v0, v2

    .line 290
    :goto_2
    return v0

    .line 245
    :cond_2
    :try_start_1
    sget-object v0, Lcom/viber/voip/pixie/WebViewProxy;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "Setting proxy with >= 4.4 API successful!"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_6

    move v0, v1

    .line 246
    goto :goto_2

    .line 253
    :catch_1
    move-exception v0

    .line 254
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 255
    new-instance v3, Ljava/io/PrintWriter;

    invoke-direct {v3, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v0, v3}, Ljava/lang/NoSuchFieldException;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 256
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    .line 257
    sget-object v3, Lcom/viber/voip/pixie/WebViewProxy;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    sget-object v0, Lcom/viber/voip/pixie/WebViewProxy;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 259
    :catch_2
    move-exception v0

    .line 260
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 261
    new-instance v3, Ljava/io/PrintWriter;

    invoke-direct {v3, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v0, v3}, Ljava/lang/IllegalAccessException;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 262
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    .line 263
    sget-object v3, Lcom/viber/voip/pixie/WebViewProxy;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    sget-object v0, Lcom/viber/voip/pixie/WebViewProxy;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 265
    :catch_3
    move-exception v0

    .line 266
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 267
    new-instance v3, Ljava/io/PrintWriter;

    invoke-direct {v3, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v0, v3}, Ljava/lang/IllegalArgumentException;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 268
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    .line 269
    sget-object v3, Lcom/viber/voip/pixie/WebViewProxy;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    sget-object v0, Lcom/viber/voip/pixie/WebViewProxy;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 271
    :catch_4
    move-exception v0

    .line 272
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 273
    new-instance v3, Ljava/io/PrintWriter;

    invoke-direct {v3, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v0, v3}, Ljava/lang/NoSuchMethodException;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 274
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    .line 275
    sget-object v3, Lcom/viber/voip/pixie/WebViewProxy;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    sget-object v0, Lcom/viber/voip/pixie/WebViewProxy;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 277
    :catch_5
    move-exception v0

    .line 278
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 279
    new-instance v3, Ljava/io/PrintWriter;

    invoke-direct {v3, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v0, v3}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 280
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    .line 281
    sget-object v3, Lcom/viber/voip/pixie/WebViewProxy;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    sget-object v0, Lcom/viber/voip/pixie/WebViewProxy;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 283
    :catch_6
    move-exception v0

    .line 284
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 285
    new-instance v3, Ljava/io/PrintWriter;

    invoke-direct {v3, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v0, v3}, Ljava/lang/InstantiationException;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 286
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    .line 287
    sget-object v3, Lcom/viber/voip/pixie/WebViewProxy;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/InstantiationException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    sget-object v0, Lcom/viber/voip/pixie/WebViewProxy;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method private static setProxyUpToHC(Landroid/webkit/WebView;Ljava/lang/String;I)Z
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 52
    sget-object v2, Lcom/viber/voip/pixie/WebViewProxy;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "Setting proxy with <= 3.2 API."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    new-instance v2, Lorg/apache/http/HttpHost;

    invoke-direct {v2, p1, p2}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    .line 59
    :try_start_0
    const-string/jumbo v3, "android.webkit.Network"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 60
    if-nez v3, :cond_0

    .line 61
    sget-object v1, Lcom/viber/voip/pixie/WebViewProxy;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "failed to get class for android.webkit.Network"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    :goto_0
    return v0

    .line 64
    :cond_0
    const-string/jumbo v4, "getInstance"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/content/Context;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 65
    if-nez v4, :cond_1

    .line 66
    sget-object v5, Lcom/viber/voip/pixie/WebViewProxy;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v6, "failed to get getInstance method"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    :cond_1
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v4, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 73
    if-nez v4, :cond_2

    .line 74
    sget-object v1, Lcom/viber/voip/pixie/WebViewProxy;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "error getting network: network is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 69
    :catch_0
    move-exception v1

    .line 70
    sget-object v2, Lcom/viber/voip/pixie/WebViewProxy;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "error getting network: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 79
    :cond_2
    :try_start_1
    const-string/jumbo v5, "mRequestQueue"

    invoke-virtual {v3, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 81
    invoke-static {v3, v4}, Lcom/viber/voip/pixie/WebViewProxy;->getFieldValueSafely(Ljava/lang/reflect/Field;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    .line 86
    if-nez v3, :cond_3

    .line 87
    sget-object v1, Lcom/viber/voip/pixie/WebViewProxy;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "Request queue is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 82
    :catch_1
    move-exception v1

    .line 83
    sget-object v1, Lcom/viber/voip/pixie/WebViewProxy;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "error getting field value"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 92
    :cond_3
    :try_start_2
    const-string/jumbo v4, "android.net.http.RequestQueue"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 93
    const-string/jumbo v5, "mProxyHost"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v4

    .line 100
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->isAccessible()Z

    move-result v5

    .line 102
    const/4 v0, 0x1

    :try_start_3
    invoke-virtual {v4, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 103
    invoke-virtual {v4, v3, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 107
    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 110
    :goto_1
    sget-object v0, Lcom/viber/voip/pixie/WebViewProxy;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "Setting proxy with <= 3.2 API successful!"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 111
    goto/16 :goto_0

    .line 95
    :catch_2
    move-exception v1

    .line 96
    sget-object v1, Lcom/viber/voip/pixie/WebViewProxy;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "error getting proxy host field"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 104
    :catch_3
    move-exception v0

    .line 105
    :try_start_4
    sget-object v0, Lcom/viber/voip/pixie/WebViewProxy;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "error setting proxy host"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 107
    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    throw v0
.end method
