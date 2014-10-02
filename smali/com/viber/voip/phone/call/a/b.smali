.class public Lcom/viber/voip/phone/call/a/b;
.super Lcom/viber/jni/PhoneControllerDelegateAdapter;
.source "SourceFile"

# interfaces
.implements Ljava/util/Observer;


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Lcom/viber/voip/phone/call/k;


# direct methods
.method public constructor <init>(Lcom/viber/voip/phone/call/k;)V
    .locals 1
    .parameter

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/viber/jni/PhoneControllerDelegateAdapter;-><init>()V

    .line 24
    const-string/jumbo v0, "ConversationPromotionListener"

    iput-object v0, p0, Lcom/viber/voip/phone/call/a/b;->a:Ljava/lang/String;

    .line 29
    iput-object p1, p0, Lcom/viber/voip/phone/call/a/b;->b:Lcom/viber/voip/phone/call/k;

    .line 30
    return-void
.end method

.method static synthetic a(Lcom/viber/voip/phone/call/a/b;)Lcom/viber/voip/phone/call/k;
    .locals 1
    .parameter

    .prologue
    .line 22
    iget-object v0, p0, Lcom/viber/voip/phone/call/a/b;->b:Lcom/viber/voip/phone/call/k;

    return-object v0
.end method

.method static synthetic a(Lcom/viber/voip/phone/call/a/b;Ljava/lang/String;Ljava/lang/String;JJLandroid/net/Uri;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 22
    invoke-direct/range {p0 .. p7}, Lcom/viber/voip/phone/call/a/b;->a(Ljava/lang/String;Ljava/lang/String;JJLandroid/net/Uri;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;JJLandroid/net/Uri;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 107
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-static {v0, p1, p1}, Lcom/viber/voip/util/hd;->a(Lcom/viber/voip/ViberApplication;Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-wide v1, p3

    move-wide v3, p5

    move-object v5, p2

    move-object v6, p7

    .line 108
    invoke-static/range {v0 .. v6}, Lcom/viber/voip/messages/j;->b(Ljava/lang/String;JJLjava/lang/String;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    .line 109
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 110
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/viber/voip/ViberApplication;->startActivity(Landroid/content/Intent;)V

    .line 111
    return-void
.end method


# virtual methods
.method public a(Lcom/viber/voip/phone/call/n;Z)V
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x0

    const-wide/16 v3, 0x0

    .line 56
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->isOnForeground()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/viber/voip/phone/call/n;->o()I

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_2

    invoke-virtual {p1}, Lcom/viber/voip/phone/call/n;->x()J

    move-result-wide v0

    cmp-long v0, v0, v3

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/phone/call/a/b;->b:Lcom/viber/voip/phone/call/k;

    invoke-virtual {v0}, Lcom/viber/voip/phone/call/k;->b()Lcom/viber/voip/phone/call/l;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/phone/call/l;->b:Lcom/viber/voip/phone/call/l;

    if-ne v0, v1, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 67
    :goto_0
    if-nez v0, :cond_3

    .line 100
    :cond_1
    :goto_1
    return-void

    .line 56
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 71
    :cond_3
    iget-object v0, p0, Lcom/viber/voip/phone/call/a/b;->b:Lcom/viber/voip/phone/call/k;

    invoke-virtual {v0}, Lcom/viber/voip/phone/call/k;->c()Lcom/viber/voip/phone/call/CallerInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/phone/call/CallerInfo;->c()Lcom/viber/voip/contacts/b/b;

    move-result-object v0

    .line 72
    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/viber/voip/phone/call/a/b;->b:Lcom/viber/voip/phone/call/k;

    invoke-virtual {v1}, Lcom/viber/voip/phone/call/k;->j()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/viber/voip/phone/call/a/b;->b:Lcom/viber/voip/phone/call/k;

    invoke-virtual {v1}, Lcom/viber/voip/phone/call/k;->f()Z

    move-result v1

    if-nez v1, :cond_4

    .line 73
    iget-object v1, p0, Lcom/viber/voip/phone/call/a/b;->b:Lcom/viber/voip/phone/call/k;

    invoke-virtual {v1}, Lcom/viber/voip/phone/call/k;->c()Lcom/viber/voip/phone/call/CallerInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/voip/phone/call/CallerInfo;->b()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/viber/voip/phone/call/a/b;->b:Lcom/viber/voip/phone/call/k;

    invoke-virtual {v2}, Lcom/viber/voip/phone/call/k;->c()Lcom/viber/voip/phone/call/CallerInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/viber/voip/phone/call/CallerInfo;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Lcom/viber/voip/contacts/b/b;->getId()J

    move-result-wide v3

    invoke-interface {v0}, Lcom/viber/voip/contacts/b/b;->c()J

    move-result-wide v5

    invoke-interface {v0}, Lcom/viber/voip/contacts/b/b;->b()Landroid/net/Uri;

    move-result-object v7

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/viber/voip/phone/call/a/b;->a(Ljava/lang/String;Ljava/lang/String;JJLandroid/net/Uri;)V

    goto :goto_1

    .line 75
    :cond_4
    iget-object v0, p0, Lcom/viber/voip/phone/call/a/b;->b:Lcom/viber/voip/phone/call/k;

    invoke-virtual {v0}, Lcom/viber/voip/phone/call/k;->j()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/viber/voip/phone/call/a/b;->b:Lcom/viber/voip/phone/call/k;

    invoke-virtual {v0}, Lcom/viber/voip/phone/call/k;->f()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 76
    :cond_5
    if-eqz p2, :cond_6

    .line 77
    iget-object v0, p0, Lcom/viber/voip/phone/call/a/b;->b:Lcom/viber/voip/phone/call/k;

    invoke-virtual {v0}, Lcom/viber/voip/phone/call/k;->c()Lcom/viber/voip/phone/call/CallerInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/phone/call/CallerInfo;->b()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/viber/voip/phone/call/a/b;->b:Lcom/viber/voip/phone/call/k;

    invoke-virtual {v0}, Lcom/viber/voip/phone/call/k;->c()Lcom/viber/voip/phone/call/CallerInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/phone/call/CallerInfo;->a()Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move-wide v5, v3

    invoke-direct/range {v0 .. v7}, Lcom/viber/voip/phone/call/a/b;->a(Ljava/lang/String;Ljava/lang/String;JJLandroid/net/Uri;)V

    goto :goto_1

    .line 81
    :cond_6
    iget-object v0, p0, Lcom/viber/voip/phone/call/a/b;->b:Lcom/viber/voip/phone/call/k;

    invoke-virtual {v0}, Lcom/viber/voip/phone/call/k;->o()I

    move-result v0

    .line 82
    const v1, 0x7fffffff

    if-eq v0, v1, :cond_7

    .line 83
    if-nez v0, :cond_1

    .line 84
    iget-object v0, p0, Lcom/viber/voip/phone/call/a/b;->b:Lcom/viber/voip/phone/call/k;

    invoke-virtual {v0}, Lcom/viber/voip/phone/call/k;->c()Lcom/viber/voip/phone/call/CallerInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/phone/call/CallerInfo;->b()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/viber/voip/phone/call/a/b;->b:Lcom/viber/voip/phone/call/k;

    invoke-virtual {v0}, Lcom/viber/voip/phone/call/k;->c()Lcom/viber/voip/phone/call/CallerInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/phone/call/CallerInfo;->a()Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move-wide v5, v3

    invoke-direct/range {v0 .. v7}, Lcom/viber/voip/phone/call/a/b;->a(Ljava/lang/String;Ljava/lang/String;JJLandroid/net/Uri;)V

    goto/16 :goto_1

    .line 87
    :cond_7
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/phone/call/a/b;->b:Lcom/viber/voip/phone/call/k;

    invoke-virtual {v1}, Lcom/viber/voip/phone/call/k;->c()Lcom/viber/voip/phone/call/CallerInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/voip/phone/call/CallerInfo;->b()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/viber/voip/phone/call/a/c;

    invoke-direct {v2, p0}, Lcom/viber/voip/phone/call/a/c;-><init>(Lcom/viber/voip/phone/call/a/b;)V

    invoke-static {v0, v1, v2}, Lcom/viber/voip/util/hd;->a(Lcom/viber/voip/ViberApplication;Ljava/lang/CharSequence;Lcom/viber/voip/util/hj;)V

    goto/16 :goto_1

    .line 98
    :cond_8
    iget-object v0, p0, Lcom/viber/voip/phone/call/a/b;->b:Lcom/viber/voip/phone/call/k;

    invoke-virtual {v0}, Lcom/viber/voip/phone/call/k;->c()Lcom/viber/voip/phone/call/CallerInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/phone/call/CallerInfo;->b()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/viber/voip/phone/call/a/b;->b:Lcom/viber/voip/phone/call/k;

    invoke-virtual {v0}, Lcom/viber/voip/phone/call/k;->c()Lcom/viber/voip/phone/call/CallerInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/phone/call/CallerInfo;->a()Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move-wide v5, v3

    invoke-direct/range {v0 .. v7}, Lcom/viber/voip/phone/call/a/b;->a(Ljava/lang/String;Ljava/lang/String;JJLandroid/net/Uri;)V

    goto/16 :goto_1
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 39
    check-cast p2, Lcom/viber/voip/phone/call/n;

    .line 41
    invoke-virtual {p2}, Lcom/viber/voip/phone/call/n;->c()I

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    :goto_0
    return-void

    .line 51
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Lcom/viber/voip/phone/call/a/b;->a(Lcom/viber/voip/phone/call/n;Z)V

    goto :goto_0
.end method
