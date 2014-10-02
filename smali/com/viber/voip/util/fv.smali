.class Lcom/viber/voip/util/fv;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/viber/voip/util/ft;


# direct methods
.method private constructor <init>(Lcom/viber/voip/util/ft;)V
    .locals 0
    .parameter

    .prologue
    .line 191
    iput-object p1, p0, Lcom/viber/voip/util/fv;->a:Lcom/viber/voip/util/ft;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/viber/voip/util/ft;Lcom/viber/voip/util/Reachability$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 191
    invoke-direct {p0, p1}, Lcom/viber/voip/util/fv;-><init>(Lcom/viber/voip/util/ft;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, -0x1

    .line 194
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x15e

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 195
    const-string/jumbo v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "state"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 197
    iget-object v1, p0, Lcom/viber/voip/util/fv;->a:Lcom/viber/voip/util/ft;

    invoke-static {v1, v3, v3}, Lcom/viber/voip/util/ft;->a(Lcom/viber/voip/util/ft;II)V

    .line 198
    const-string/jumbo v1, "Airplane mode on"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 215
    :cond_0
    :goto_0
    return-void

    .line 199
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 202
    iget-object v0, p0, Lcom/viber/voip/util/fv;->a:Lcom/viber/voip/util/ft;

    invoke-static {v0, p2}, Lcom/viber/voip/util/ft;->a(Lcom/viber/voip/util/ft;Landroid/content/Intent;)V

    goto :goto_0

    .line 204
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "android.net.conn.BACKGROUND_DATA_SETTING_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/viber/voip/util/fv;->a:Lcom/viber/voip/util/ft;

    iget-object v1, p0, Lcom/viber/voip/util/fv;->a:Lcom/viber/voip/util/ft;

    invoke-static {v1}, Lcom/viber/voip/util/ft;->a(Lcom/viber/voip/util/ft;)Landroid/net/ConnectivityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getBackgroundDataSetting()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/viber/voip/util/ft;->a(Lcom/viber/voip/util/ft;Z)V

    goto :goto_0
.end method
