.class public Lcom/viber/voip/messages/extras/fb/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/messages/extras/fb/af;


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/viber/voip/messages/extras/fb/b;->a:Landroid/content/Context;

    .line 25
    return-void
.end method

.method private a(JI)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 45
    packed-switch p3, :pswitch_data_0

    .line 59
    :pswitch_0
    const/4 v0, -0x1

    .line 73
    :goto_0
    iget-object v1, p0, Lcom/viber/voip/messages/extras/fb/b;->a:Landroid/content/Context;

    const v2, 0x7f0c0445

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/viber/voip/messages/extras/fb/b;->a:Landroid/content/Context;

    invoke-virtual {v5, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/viber/voip/messages/extras/fb/b;->a(JLjava/lang/String;)V

    .line 74
    return-void

    .line 47
    :pswitch_1
    const v0, 0x7f0c0442

    .line 48
    goto :goto_0

    .line 51
    :pswitch_2
    const v0, 0x7f0c0443

    .line 52
    goto :goto_0

    .line 55
    :pswitch_3
    const v0, 0x7f0c0444

    .line 56
    goto :goto_0

    .line 45
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private a(JLjava/lang/String;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 78
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/a/a;->z:Lcom/viber/voip/a/u;

    sget-object v2, Lcom/viber/voip/a/a;->z:Lcom/viber/voip/a/u;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v2, "308"

    invoke-virtual {v1, v2}, Lcom/viber/voip/a/u;->b(Ljava/lang/String;)Lcom/viber/voip/a/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    .line 80
    const/4 v0, 0x3

    const-string/jumbo v1, "DbOnSharedListener"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "FacebookManager.getComment: to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 81
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/viber/voip/messages/extras/fb/b;->a:Landroid/content/Context;

    const-class v2, Lcom/viber/voip/messages/extras/fb/FacebookDialogActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 82
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 83
    const-string/jumbo v1, "fb_error"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 84
    const-string/jumbo v1, "msg_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 85
    const-string/jumbo v1, "msg_body"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 86
    iget-object v1, p0, Lcom/viber/voip/messages/extras/fb/b;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 87
    return-void
.end method


# virtual methods
.method public a(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 33
    return-void
.end method

.method public a(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Throwable;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 37
    const/4 v0, 0x3

    const-string/jumbo v1, "DbOnSharedListener"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "DialogOnSharedListener.onError: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " --> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p7}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 38
    invoke-virtual {p7}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Error validating access token"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 39
    invoke-direct {p0, p1, p2, p6}, Lcom/viber/voip/messages/extras/fb/b;->a(JI)V

    .line 41
    :cond_0
    return-void
.end method

.method public b(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 29
    return-void
.end method
