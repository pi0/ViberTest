.class final Lcom/viber/voip/sms/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/util/hj;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:I


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 275
    iput-object p1, p0, Lcom/viber/voip/sms/v;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/viber/voip/sms/v;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/viber/voip/sms/v;->c:Ljava/lang/String;

    iput p4, p0, Lcom/viber/voip/sms/v;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ZILjava/lang/String;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 277
    packed-switch p2, :pswitch_data_0

    .line 283
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Sms comes from NOT Viber sent sms broadcast to the native sms app. CheckStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/sms/s;->b(Ljava/lang/String;)V

    .line 287
    :goto_0
    return-void

    .line 279
    :pswitch_0
    const-string/jumbo v0, "Sms comes from VIBER number"

    invoke-static {v0}, Lcom/viber/voip/sms/s;->b(Ljava/lang/String;)V

    .line 280
    iget-object v0, p0, Lcom/viber/voip/sms/v;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/viber/voip/sms/v;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/viber/voip/sms/v;->c:Ljava/lang/String;

    iget v3, p0, Lcom/viber/voip/sms/v;->d:I

    invoke-static {v0, v1, v2, v3}, Lcom/viber/voip/sms/s;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 277
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
