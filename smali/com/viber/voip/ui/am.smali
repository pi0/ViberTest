.class public Lcom/viber/voip/ui/am;
.super Lcom/viber/voip/ui/al;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Lcom/viber/voip/ui/al;-><init>()V

    return-void
.end method

.method public static J()V
    .locals 2

    .prologue
    .line 19
    const-wide/16 v0, 0x64

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    :goto_0
    return-void

    .line 20
    :catch_0
    move-exception v0

    .line 21
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public onStart()V
    .locals 1

    .prologue
    .line 8
    invoke-super {p0}, Lcom/viber/voip/ui/al;->onStart()V

    .line 10
    invoke-virtual {p0}, Lcom/viber/voip/ui/am;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/viber/voip/ui/am;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 11
    invoke-static {}, Lcom/viber/voip/ui/am;->J()V

    .line 13
    :cond_0
    return-void
.end method
