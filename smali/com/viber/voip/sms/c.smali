.class Lcom/viber/voip/sms/c;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/viber/voip/sms/a;


# direct methods
.method constructor <init>(Lcom/viber/voip/sms/a;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 66
    iput-object p1, p0, Lcom/viber/voip/sms/c;->a:Lcom/viber/voip/sms/a;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .locals 1

    .prologue
    .line 95
    const/4 v0, 0x0

    return v0
.end method

.method public onChange(Z)V
    .locals 7
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 70
    iget-object v0, p0, Lcom/viber/voip/sms/c;->a:Lcom/viber/voip/sms/a;

    const-string/jumbo v1, "On Sms db changed"

    invoke-static {v0, v1}, Lcom/viber/voip/sms/a;->a(Lcom/viber/voip/sms/a;Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lcom/viber/voip/sms/c;->a:Lcom/viber/voip/sms/a;

    invoke-static {v0}, Lcom/viber/voip/sms/a;->a(Lcom/viber/voip/sms/a;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "content://sms"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string/jumbo v3, "_id=(select max(_id) from sms) and read=0"

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 72
    invoke-static {v0}, Lcom/viber/voip/util/al;->b(Landroid/database/Cursor;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 73
    iget-object v1, p0, Lcom/viber/voip/sms/c;->a:Lcom/viber/voip/sms/a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "OnChange new sms count: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/viber/voip/sms/a;->a(Lcom/viber/voip/sms/a;Ljava/lang/String;)V

    .line 74
    const-string/jumbo v1, "address"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 75
    const-string/jumbo v2, "body"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 76
    const-string/jumbo v3, "_id"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 78
    invoke-static {}, Lcom/viber/voip/sms/s;->c()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {}, Lcom/viber/voip/ViberApplication;->isActivated()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 79
    iget-object v4, p0, Lcom/viber/voip/sms/c;->a:Lcom/viber/voip/sms/a;

    invoke-static {v4}, Lcom/viber/voip/sms/a;->b(Lcom/viber/voip/sms/a;)Landroid/util/SparseBooleanArray;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v4

    if-gez v4, :cond_3

    .line 80
    iget-object v4, p0, Lcom/viber/voip/sms/c;->a:Lcom/viber/voip/sms/a;

    invoke-static {v4}, Lcom/viber/voip/sms/a;->b(Lcom/viber/voip/sms/a;)Landroid/util/SparseBooleanArray;

    move-result-object v4

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-virtual {v4, v3, v5}, Landroid/util/SparseBooleanArray;->append(IZ)V

    .line 84
    invoke-static {}, Lcom/viber/voip/sms/s;->a()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/viber/voip/sms/c;->a:Lcom/viber/voip/sms/a;

    invoke-static {v4}, Lcom/viber/voip/sms/a;->c(Lcom/viber/voip/sms/a;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v1, v2, v3}, Lcom/viber/voip/sms/s;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 89
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/viber/voip/sms/c;->a:Lcom/viber/voip/sms/a;

    invoke-static {v4, v3, v1, v2}, Lcom/viber/voip/sms/a;->a(Lcom/viber/voip/sms/a;ILjava/lang/String;Ljava/lang/String;)V

    .line 91
    :cond_1
    invoke-static {v0}, Lcom/viber/voip/util/al;->a(Landroid/database/Cursor;)V

    .line 92
    return-void

    .line 85
    :cond_2
    invoke-static {v1}, Lcom/viber/voip/sms/s;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 87
    :cond_3
    iget-object v4, p0, Lcom/viber/voip/sms/c;->a:Lcom/viber/voip/sms/a;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "OnChange already processed SMS #"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/viber/voip/sms/a;->a(Lcom/viber/voip/sms/a;Ljava/lang/String;)V

    goto :goto_0
.end method
