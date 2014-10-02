.class public Lcom/viber/voip/messages/extras/twitter/TwitterAuthDialogActivity;
.super Lcom/viber/voip/app/ViberActivity;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcom/viber/voip/messages/extras/twitter/TwitterAuthDialogActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/messages/extras/twitter/TwitterAuthDialogActivity;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/viber/voip/app/ViberActivity;-><init>()V

    return-void
.end method

.method private a(Landroid/content/Intent;)V
    .locals 3
    .parameter

    .prologue
    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "resolveIntent() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/extras/twitter/TwitterAuthDialogActivity;->a(Ljava/lang/String;)V

    .line 37
    const-string/jumbo v0, "extra_load_url"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 38
    new-instance v1, Lcom/viber/voip/messages/extras/twitter/c;

    new-instance v2, Lcom/viber/voip/messages/extras/twitter/a;

    invoke-direct {v2, p0}, Lcom/viber/voip/messages/extras/twitter/a;-><init>(Lcom/viber/voip/messages/extras/twitter/TwitterAuthDialogActivity;)V

    invoke-direct {v1, p0, v0, v2}, Lcom/viber/voip/messages/extras/twitter/c;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/viber/voip/messages/extras/twitter/e;)V

    .line 52
    new-instance v0, Lcom/viber/voip/messages/extras/twitter/b;

    invoke-direct {v0, p0}, Lcom/viber/voip/messages/extras/twitter/b;-><init>(Lcom/viber/voip/messages/extras/twitter/TwitterAuthDialogActivity;)V

    invoke-virtual {v1, v0}, Lcom/viber/voip/messages/extras/twitter/c;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 59
    invoke-virtual {v1, p0}, Lcom/viber/voip/messages/extras/twitter/c;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 60
    invoke-virtual {v1}, Lcom/viber/voip/messages/extras/twitter/c;->show()V

    .line 61
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 69
    sget-object v0, Lcom/viber/voip/messages/extras/twitter/TwitterAuthDialogActivity;->a:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter

    .prologue
    .line 19
    invoke-super {p0, p1}, Lcom/viber/voip/app/ViberActivity;->onCreate(Landroid/os/Bundle;)V

    .line 20
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 24
    invoke-super {p0}, Lcom/viber/voip/app/ViberActivity;->onDestroy()V

    .line 25
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "action_handle_dialog_destroy"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/extras/twitter/TwitterAuthDialogActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 26
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->finish()V

    .line 27
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0
    .parameter

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/viber/voip/messages/extras/twitter/TwitterAuthDialogActivity;->finish()V

    .line 66
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 31
    invoke-super {p0}, Lcom/viber/voip/app/ViberActivity;->onStart()V

    .line 32
    invoke-virtual {p0}, Lcom/viber/voip/messages/extras/twitter/TwitterAuthDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/extras/twitter/TwitterAuthDialogActivity;->a(Landroid/content/Intent;)V

    .line 33
    return-void
.end method
