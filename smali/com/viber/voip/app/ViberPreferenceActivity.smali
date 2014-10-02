.class public Lcom/viber/voip/app/ViberPreferenceActivity;
.super Lcom/actionbarsherlock/app/SherlockPreferenceActivity;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockPreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnalyticsPageViewChanged()V
    .locals 0

    .prologue
    .line 39
    return-void
.end method

.method protected onPause()V
    .locals 3

    .prologue
    .line 33
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockPreferenceActivity;->onPause()V

    .line 34
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/viber/voip/ViberApplication;->notifyActivityOnForeground(ZLjava/lang/String;)V

    .line 35
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 27
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockPreferenceActivity;->onResume()V

    .line 28
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/viber/voip/ViberApplication;->notifyActivityOnForeground(ZLjava/lang/String;)V

    .line 29
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 13
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockPreferenceActivity;->onStart()V

    .line 15
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/viber/voip/a/bc;->a(Landroid/app/Activity;)V

    .line 17
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 21
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockPreferenceActivity;->onStop()V

    .line 23
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/viber/voip/a/bc;->b(Landroid/app/Activity;)V

    .line 24
    return-void
.end method
