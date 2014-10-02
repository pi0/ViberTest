.class Lcom/viber/voip/sms/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/viber/voip/sms/a;


# direct methods
.method constructor <init>(Lcom/viber/voip/sms/a;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 249
    iput-object p1, p0, Lcom/viber/voip/sms/f;->b:Lcom/viber/voip/sms/a;

    iput-object p2, p0, Lcom/viber/voip/sms/f;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 251
    iget-object v0, p0, Lcom/viber/voip/sms/f;->b:Lcom/viber/voip/sms/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "addSmsNumber phoneNumber:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/viber/voip/sms/f;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/viber/voip/sms/a;->a(Lcom/viber/voip/sms/a;Ljava/lang/String;)V

    .line 252
    iget-object v0, p0, Lcom/viber/voip/sms/f;->b:Lcom/viber/voip/sms/a;

    invoke-static {v0}, Lcom/viber/voip/sms/a;->d(Lcom/viber/voip/sms/a;)Lcom/viber/voip/sms/j;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/sms/f;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/viber/voip/sms/j;->a(Ljava/lang/String;)V

    .line 253
    iget-object v0, p0, Lcom/viber/voip/sms/f;->b:Lcom/viber/voip/sms/a;

    invoke-static {v0}, Lcom/viber/voip/sms/a;->e(Lcom/viber/voip/sms/a;)V

    .line 254
    return-void
.end method
