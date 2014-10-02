.class Lcom/viber/voip/sms/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/viber/voip/sms/a;


# direct methods
.method constructor <init>(Lcom/viber/voip/sms/a;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 222
    iput-object p1, p0, Lcom/viber/voip/sms/e;->c:Lcom/viber/voip/sms/a;

    iput-object p2, p0, Lcom/viber/voip/sms/e;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/viber/voip/sms/e;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 224
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 225
    iget-object v1, p0, Lcom/viber/voip/sms/e;->c:Lcom/viber/voip/sms/a;

    iget-object v2, p0, Lcom/viber/voip/sms/e;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/viber/voip/sms/a;->a(Ljava/lang/String;)I

    move-result v1

    .line 227
    iget-object v2, p0, Lcom/viber/voip/sms/e;->c:Lcom/viber/voip/sms/a;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "insertSilentSms threadId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/viber/voip/sms/a;->a(Lcom/viber/voip/sms/a;Ljava/lang/String;)V

    .line 228
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 241
    :goto_0
    return-void

    .line 230
    :cond_0
    const-string/jumbo v2, "address"

    iget-object v3, p0, Lcom/viber/voip/sms/e;->a:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    const-string/jumbo v2, "body"

    iget-object v3, p0, Lcom/viber/voip/sms/e;->b:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 233
    const-string/jumbo v4, "date"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 235
    const-string/jumbo v2, "read"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 236
    const-string/jumbo v2, "thread_id"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 238
    iget-object v2, p0, Lcom/viber/voip/sms/e;->c:Lcom/viber/voip/sms/a;

    invoke-static {v2}, Lcom/viber/voip/sms/a;->a(Lcom/viber/voip/sms/a;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "content://sms/inbox"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 240
    iget-object v2, p0, Lcom/viber/voip/sms/e;->c:Lcom/viber/voip/sms/a;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "insertSilentSms threadId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " insertedUri:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/viber/voip/sms/a;->a(Lcom/viber/voip/sms/a;Ljava/lang/String;)V

    goto :goto_0
.end method
