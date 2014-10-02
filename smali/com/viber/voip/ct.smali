.class Lcom/viber/voip/ct;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/viber/voip/SystemDialogActivity;


# direct methods
.method constructor <init>(Lcom/viber/voip/SystemDialogActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1186
    iput-object p1, p0, Lcom/viber/voip/ct;->b:Lcom/viber/voip/SystemDialogActivity;

    iput-boolean p2, p0, Lcom/viber/voip/ct;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1188
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    const-string/jumbo v3, "last_online_last_changed_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-interface {v0, v3, v4, v5}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;J)Lcom/viber/voip/settings/l;

    .line 1189
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v3

    invoke-static {}, Lcom/viber/voip/settings/j;->Y()Ljava/lang/String;

    move-result-object v4

    iget-boolean v0, p0, Lcom/viber/voip/ct;->a:Z

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-interface {v3, v4, v0}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;Z)Lcom/viber/voip/settings/l;

    .line 1190
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/viber/voip/ViberApplication;->getPhoneController(Z)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/jni/PhoneControllerWrapper;->getSettingsController()Lcom/viber/jni/settings/SettingsController;

    move-result-object v0

    .line 1191
    iget-boolean v3, p0, Lcom/viber/voip/ct;->a:Z

    if-nez v3, :cond_1

    :goto_1
    invoke-interface {v0, v1}, Lcom/viber/jni/settings/SettingsController;->handleChangeLastOnlineSettings(I)Z

    .line 1192
    iget-object v0, p0, Lcom/viber/voip/ct;->b:Lcom/viber/voip/SystemDialogActivity;

    invoke-virtual {v0, p1}, Lcom/viber/voip/SystemDialogActivity;->a(Landroid/content/DialogInterface;)V

    .line 1193
    return-void

    :cond_0
    move v0, v2

    .line 1189
    goto :goto_0

    :cond_1
    move v1, v2

    .line 1191
    goto :goto_1
.end method
