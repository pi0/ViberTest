.class public Lcom/viber/voip/app/ViberListActivity;
.super Lcom/actionbarsherlock/app/SherlockListActivity;
.source "SourceFile"


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockListActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onDestroy()V
    .locals 1

    .prologue
    .line 34
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockListActivity;->onDestroy()V

    .line 36
    invoke-virtual {p0}, Lcom/viber/voip/app/ViberListActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/util/gl;->a(Landroid/view/Window;)V

    .line 38
    return-void
.end method

.method protected onPause()V
    .locals 3

    .prologue
    .line 27
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/viber/voip/app/ViberListActivity;->a:Z

    .line 28
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockListActivity;->onPause()V

    .line 29
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/viber/voip/ViberApplication;->notifyActivityOnForeground(ZLjava/lang/String;)V

    .line 30
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/viber/voip/app/ViberListActivity;->a:Z

    .line 21
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockListActivity;->onResume()V

    .line 22
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/viber/voip/ViberApplication;->notifyActivityOnForeground(ZLjava/lang/String;)V

    .line 23
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 42
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockListActivity;->onStart()V

    .line 44
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/viber/voip/a/bc;->a(Landroid/app/Activity;)V

    .line 45
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 49
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockListActivity;->onStop()V

    .line 51
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/viber/voip/a/bc;->b(Landroid/app/Activity;)V

    .line 53
    return-void
.end method
