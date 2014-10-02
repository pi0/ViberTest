.class Lcom/viber/voip/process/f;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/viber/voip/process/i;

.field final synthetic b:Lcom/viber/voip/process/e;


# direct methods
.method constructor <init>(Lcom/viber/voip/process/e;Lcom/viber/voip/process/i;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 146
    iput-object p1, p0, Lcom/viber/voip/process/f;->b:Lcom/viber/voip/process/e;

    iput-object p2, p0, Lcom/viber/voip/process/f;->a:Lcom/viber/voip/process/i;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 149
    invoke-static {}, Lcom/viber/voip/process/h;->values()[Lcom/viber/voip/process/h;

    move-result-object v0

    invoke-static {}, Lcom/viber/voip/process/e;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    aget-object v0, v0, v1

    .line 150
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Received broadcast, method: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/viber/voip/process/e;->a(Ljava/lang/String;)V

    .line 151
    invoke-static {}, Lcom/viber/voip/process/e;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 152
    invoke-static {}, Lcom/viber/voip/process/e;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 153
    new-instance v3, Lcom/viber/voip/process/j;

    invoke-direct {v3, v1, v2}, Lcom/viber/voip/process/j;-><init>(ILjava/lang/String;)V

    .line 154
    sget-object v1, Lcom/viber/voip/process/g;->a:[I

    invoke-virtual {v0}, Lcom/viber/voip/process/h;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 173
    :goto_0
    return-void

    .line 156
    :pswitch_0
    iget-object v0, p0, Lcom/viber/voip/process/f;->a:Lcom/viber/voip/process/i;

    invoke-interface {v0, v3}, Lcom/viber/voip/process/i;->b(Lcom/viber/voip/process/j;)V

    goto :goto_0

    .line 159
    :pswitch_1
    iget-object v0, p0, Lcom/viber/voip/process/f;->a:Lcom/viber/voip/process/i;

    invoke-interface {v0, v3}, Lcom/viber/voip/process/i;->c(Lcom/viber/voip/process/j;)V

    goto :goto_0

    .line 162
    :pswitch_2
    iget-object v0, p0, Lcom/viber/voip/process/f;->a:Lcom/viber/voip/process/i;

    invoke-interface {v0, v3}, Lcom/viber/voip/process/i;->a(Lcom/viber/voip/process/j;)V

    goto :goto_0

    .line 165
    :pswitch_3
    invoke-static {}, Lcom/viber/voip/process/e;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 166
    iget-object v1, p0, Lcom/viber/voip/process/f;->a:Lcom/viber/voip/process/i;

    invoke-interface {v1, v3, v0}, Lcom/viber/voip/process/i;->a(Lcom/viber/voip/process/j;I)V

    goto :goto_0

    .line 169
    :pswitch_4
    invoke-static {}, Lcom/viber/voip/process/e;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 170
    iget-object v1, p0, Lcom/viber/voip/process/f;->a:Lcom/viber/voip/process/i;

    invoke-interface {v1, v0, v3}, Lcom/viber/voip/process/i;->a(ZLcom/viber/voip/process/j;)V

    goto :goto_0

    .line 154
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
