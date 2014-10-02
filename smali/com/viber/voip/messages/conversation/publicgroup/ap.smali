.class public Lcom/viber/voip/messages/conversation/publicgroup/ap;
.super Lcom/viber/voip/messages/conversation/d;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v4/app/LoaderManager;Lcom/viber/voip/messages/i;Lcom/viber/voip/messages/conversation/g;Lcom/viber/provider/e;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 30
    sget-object v1, Lcom/viber/provider/messages/b/c;->a:Landroid/net/Uri;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p5

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/viber/voip/messages/conversation/d;-><init>(Landroid/net/Uri;Landroid/content/Context;Landroid/support/v4/app/LoaderManager;Lcom/viber/provider/e;Lcom/viber/voip/messages/i;Lcom/viber/voip/messages/conversation/g;)V

    .line 32
    sget-object v0, Lcom/viber/voip/messages/conversation/publicgroup/aq;->b:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/conversation/publicgroup/ap;->a([Ljava/lang/String;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/viber/voip/messages/i;Lcom/viber/voip/messages/conversation/g;Lcom/viber/provider/e;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/viber/voip/messages/conversation/d;-><init>(Landroid/content/Context;Lcom/viber/voip/messages/i;Lcom/viber/voip/messages/conversation/g;Lcom/viber/provider/e;)V

    .line 39
    sget-object v0, Lcom/viber/voip/messages/conversation/publicgroup/aq;->b:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/conversation/publicgroup/ap;->a([Ljava/lang/String;)V

    .line 40
    return-void
.end method


# virtual methods
.method public synthetic a(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 17
    invoke-virtual {p0, p1}, Lcom/viber/voip/messages/conversation/publicgroup/ap;->f(I)Lcom/viber/voip/messages/conversation/publicgroup/aq;

    move-result-object v0

    return-object v0
.end method

.method public synthetic e(I)Lcom/viber/voip/messages/conversation/h;
    .locals 1
    .parameter

    .prologue
    .line 17
    invoke-virtual {p0, p1}, Lcom/viber/voip/messages/conversation/publicgroup/ap;->f(I)Lcom/viber/voip/messages/conversation/publicgroup/aq;

    move-result-object v0

    return-object v0
.end method

.method public f(I)Lcom/viber/voip/messages/conversation/publicgroup/aq;
    .locals 2
    .parameter

    .prologue
    .line 45
    invoke-virtual {p0, p1}, Lcom/viber/voip/messages/conversation/publicgroup/ap;->c(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    new-instance v0, Lcom/viber/voip/messages/conversation/publicgroup/aq;

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/publicgroup/ap;->e:Landroid/database/Cursor;

    invoke-direct {v0, v1}, Lcom/viber/voip/messages/conversation/publicgroup/aq;-><init>(Landroid/database/Cursor;)V

    .line 48
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
