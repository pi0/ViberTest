.class Lcom/viber/voip/process/q;
.super Lcom/viber/voip/process/c;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 152
    invoke-direct {p0}, Lcom/viber/voip/process/c;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/viber/voip/process/m;)V
    .locals 0
    .parameter

    .prologue
    .line 152
    invoke-direct {p0}, Lcom/viber/voip/process/q;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ZI)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 156
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 157
    const-string/jumbo v1, "create"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 158
    const-string/jumbo v1, "count"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 159
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v1

    const-class v2, Lcom/viber/voip/process/q;

    invoke-super {p0, v1, v2, v0}, Lcom/viber/voip/process/c;->execute(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 160
    return-void
.end method

.method public doInTargetProcess(Landroid/os/Bundle;Lcom/viber/voip/process/b;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 164
    const-string/jumbo v0, "count"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 165
    const-string/jumbo v1, "create"

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 166
    invoke-static {}, Lcom/viber/voip/process/l;->a()Lcom/viber/voip/process/l;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/viber/voip/process/l;->a(Lcom/viber/voip/process/l;I)V

    .line 170
    :goto_0
    return-void

    .line 168
    :cond_0
    invoke-static {}, Lcom/viber/voip/process/l;->a()Lcom/viber/voip/process/l;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/viber/voip/process/l;->b(Lcom/viber/voip/process/l;I)V

    goto :goto_0
.end method

.method public processResult(Landroid/os/Bundle;)V
    .locals 0
    .parameter

    .prologue
    .line 174
    return-void
.end method
