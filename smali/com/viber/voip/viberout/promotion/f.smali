.class Lcom/viber/voip/viberout/promotion/f;
.super Lcom/viber/voip/viberout/promotion/g;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/viber/voip/viberout/promotion/b;

.field private c:Lcom/viber/voip/viberout/promotion/a;

.field private d:Ljava/lang/String;

.field private e:J


# direct methods
.method constructor <init>(Lcom/viber/voip/viberout/promotion/b;)V
    .locals 0
    .parameter

    .prologue
    .line 80
    iput-object p1, p0, Lcom/viber/voip/viberout/promotion/f;->a:Lcom/viber/voip/viberout/promotion/b;

    invoke-direct {p0, p1}, Lcom/viber/voip/viberout/promotion/g;-><init>(Lcom/viber/voip/viberout/promotion/b;)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/viber/voip/viberout/promotion/a;)Z
    .locals 5
    .parameter

    .prologue
    .line 87
    sget-object v0, Lcom/viber/voip/viberout/promotion/c;->a:[I

    invoke-virtual {p1}, Lcom/viber/voip/viberout/promotion/a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 118
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 89
    :pswitch_0
    sget-object v0, Lcom/viber/voip/viberout/promotion/a;->b:Lcom/viber/voip/viberout/promotion/a;

    iput-object v0, p0, Lcom/viber/voip/viberout/promotion/f;->c:Lcom/viber/voip/viberout/promotion/a;

    .line 90
    const-string/jumbo v0, "PREF_VO_APP_ENTRY_ICON_COUNT"

    iput-object v0, p0, Lcom/viber/voip/viberout/promotion/f;->d:Ljava/lang/String;

    .line 91
    iget-object v0, p0, Lcom/viber/voip/viberout/promotion/f;->a:Lcom/viber/voip/viberout/promotion/b;

    iget-object v1, p0, Lcom/viber/voip/viberout/promotion/f;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/viber/voip/viberout/promotion/b;->a(Lcom/viber/voip/viberout/promotion/b;Ljava/lang/String;)I

    .line 92
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/viber/voip/viberout/promotion/f;->e:J

    goto :goto_0

    .line 95
    :pswitch_1
    sget-object v0, Lcom/viber/voip/viberout/promotion/a;->c:Lcom/viber/voip/viberout/promotion/a;

    iput-object v0, p0, Lcom/viber/voip/viberout/promotion/f;->c:Lcom/viber/voip/viberout/promotion/a;

    .line 96
    const-string/jumbo v0, "PREF_VO_APP_ENTRY_NOTIFICATION_COUNT"

    iput-object v0, p0, Lcom/viber/voip/viberout/promotion/f;->d:Ljava/lang/String;

    .line 97
    iget-object v0, p0, Lcom/viber/voip/viberout/promotion/f;->a:Lcom/viber/voip/viberout/promotion/b;

    iget-object v1, p0, Lcom/viber/voip/viberout/promotion/f;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/viber/voip/viberout/promotion/b;->a(Lcom/viber/voip/viberout/promotion/b;Ljava/lang/String;)I

    .line 98
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/viber/voip/viberout/promotion/f;->e:J

    goto :goto_0

    .line 101
    :pswitch_2
    iget-object v0, p0, Lcom/viber/voip/viberout/promotion/f;->a:Lcom/viber/voip/viberout/promotion/b;

    iget-object v1, p0, Lcom/viber/voip/viberout/promotion/f;->a:Lcom/viber/voip/viberout/promotion/b;

    iget-object v1, v1, Lcom/viber/voip/viberout/promotion/b;->b:Lcom/viber/voip/viberout/promotion/d;

    invoke-static {v0, v1}, Lcom/viber/voip/viberout/promotion/b;->a(Lcom/viber/voip/viberout/promotion/b;Lcom/android/a/a/a;)V

    .line 102
    iget-object v0, p0, Lcom/viber/voip/viberout/promotion/f;->c:Lcom/viber/voip/viberout/promotion/a;

    if-eqz v0, :cond_0

    .line 103
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/viber/voip/viberout/promotion/f;->e:J

    sub-long/2addr v0, v2

    .line 104
    iget-object v2, p0, Lcom/viber/voip/viberout/promotion/f;->a:Lcom/viber/voip/viberout/promotion/b;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Elapsed since "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/viber/voip/viberout/promotion/f;->c:Lcom/viber/voip/viberout/promotion/a;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/viber/voip/viberout/promotion/b;->a(Ljava/lang/String;)V

    .line 105
    const-wide/16 v2, 0x1388

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 106
    iget-object v0, p0, Lcom/viber/voip/viberout/promotion/f;->a:Lcom/viber/voip/viberout/promotion/b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Replaying "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/viber/voip/viberout/promotion/f;->c:Lcom/viber/voip/viberout/promotion/a;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/viberout/promotion/b;->a(Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lcom/viber/voip/viberout/promotion/f;->a:Lcom/viber/voip/viberout/promotion/b;

    iget-object v1, p0, Lcom/viber/voip/viberout/promotion/f;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/viber/voip/viberout/promotion/b;->b(Lcom/viber/voip/viberout/promotion/b;Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lcom/viber/voip/viberout/promotion/f;->a:Lcom/viber/voip/viberout/promotion/b;

    iget-object v1, p0, Lcom/viber/voip/viberout/promotion/f;->c:Lcom/viber/voip/viberout/promotion/a;

    invoke-virtual {v0, v1}, Lcom/viber/voip/viberout/promotion/b;->a(Lcom/viber/voip/viberout/promotion/a;)V

    goto/16 :goto_0

    .line 111
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/viberout/promotion/f;->a:Lcom/viber/voip/viberout/promotion/b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Not replaying "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/viber/voip/viberout/promotion/f;->c:Lcom/viber/voip/viberout/promotion/a;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/viberout/promotion/b;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 87
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
