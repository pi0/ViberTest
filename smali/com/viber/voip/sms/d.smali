.class Lcom/viber/voip/sms/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/viber/voip/sms/a;


# direct methods
.method constructor <init>(Lcom/viber/voip/sms/a;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 121
    iput-object p1, p0, Lcom/viber/voip/sms/d;->b:Lcom/viber/voip/sms/a;

    iput p2, p0, Lcom/viber/voip/sms/d;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 123
    iget-object v0, p0, Lcom/viber/voip/sms/d;->b:Lcom/viber/voip/sms/a;

    const-string/jumbo v1, "markSmsInNativeDatabase start"

    invoke-static {v0, v1}, Lcom/viber/voip/sms/a;->a(Lcom/viber/voip/sms/a;Ljava/lang/String;)V

    .line 124
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 125
    const-string/jumbo v1, "read"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 127
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/viber/voip/sms/d;->a:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const-string/jumbo v2, "0"

    aput-object v2, v1, v5

    .line 128
    iget-object v2, p0, Lcom/viber/voip/sms/d;->b:Lcom/viber/voip/sms/a;

    invoke-static {v2}, Lcom/viber/voip/sms/a;->a(Lcom/viber/voip/sms/a;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "content://sms/inbox"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const-string/jumbo v4, "_id=? and read=?"

    invoke-virtual {v2, v3, v0, v4, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 129
    iget-object v1, p0, Lcom/viber/voip/sms/d;->b:Lcom/viber/voip/sms/a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "markSmsInNativeDatabase process "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/viber/voip/sms/a;->a(Lcom/viber/voip/sms/a;Ljava/lang/String;)V

    .line 130
    return-void
.end method
