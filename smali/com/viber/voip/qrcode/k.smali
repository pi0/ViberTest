.class final Lcom/viber/voip/qrcode/k;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/viber/voip/qrcode/h;


# direct methods
.method private constructor <init>(Lcom/viber/voip/qrcode/h;)V
    .locals 0
    .parameter

    .prologue
    .line 89
    iput-object p1, p0, Lcom/viber/voip/qrcode/k;->a:Lcom/viber/voip/qrcode/h;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/viber/voip/qrcode/h;Lcom/viber/voip/qrcode/i;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/viber/voip/qrcode/k;-><init>(Lcom/viber/voip/qrcode/h;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 92
    const-string/jumbo v0, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    const-string/jumbo v0, "plugged"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-gtz v0, :cond_1

    const/4 v0, 0x1

    .line 95
    :goto_0
    if-eqz v0, :cond_2

    .line 96
    iget-object v0, p0, Lcom/viber/voip/qrcode/k;->a:Lcom/viber/voip/qrcode/h;

    invoke-virtual {v0}, Lcom/viber/voip/qrcode/h;->a()V

    .line 101
    :cond_0
    :goto_1
    return-void

    .line 94
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 98
    :cond_2
    iget-object v0, p0, Lcom/viber/voip/qrcode/k;->a:Lcom/viber/voip/qrcode/h;

    invoke-static {v0}, Lcom/viber/voip/qrcode/h;->a(Lcom/viber/voip/qrcode/h;)V

    goto :goto_1
.end method
