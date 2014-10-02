.class public abstract Lcom/viber/voip/messages/ui/popup/a/l;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Lcom/viber/voip/messages/conversation/ai;

.field private c:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/viber/voip/messages/conversation/ai;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    invoke-virtual {p0, p1}, Lcom/viber/voip/messages/ui/popup/a/l;->a(Landroid/app/Activity;)V

    .line 21
    invoke-virtual {p0, p2}, Lcom/viber/voip/messages/ui/popup/a/l;->a(Lcom/viber/voip/messages/conversation/ai;)V

    .line 22
    iput-boolean p3, p0, Lcom/viber/voip/messages/ui/popup/a/l;->c:Z

    .line 23
    return-void
.end method


# virtual methods
.method public a(I)I
    .locals 1
    .parameter

    .prologue
    .line 56
    const/4 v0, -0x1

    return v0
.end method

.method public abstract a(Landroid/view/View;I)Landroid/view/View;
.end method

.method public a(IZ)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 40
    return-void
.end method

.method protected a(Landroid/app/Activity;)V
    .locals 0
    .parameter

    .prologue
    .line 49
    iput-object p1, p0, Lcom/viber/voip/messages/ui/popup/a/l;->a:Landroid/app/Activity;

    .line 50
    return-void
.end method

.method protected a(Lcom/viber/voip/messages/conversation/ai;)V
    .locals 0
    .parameter

    .prologue
    .line 43
    iput-object p1, p0, Lcom/viber/voip/messages/ui/popup/a/l;->b:Lcom/viber/voip/messages/conversation/ai;

    .line 44
    return-void
.end method

.method public a(II)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 32
    const/4 v0, 0x0

    return v0
.end method

.method public b(I)I
    .locals 1
    .parameter

    .prologue
    .line 60
    const/4 v0, -0x1

    return v0
.end method

.method public abstract b()Z
.end method

.method public abstract c()I
.end method

.method protected d(I)I
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 64
    iget-object v1, p0, Lcom/viber/voip/messages/ui/popup/a/l;->b:Lcom/viber/voip/messages/conversation/ai;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/viber/voip/messages/ui/popup/a/l;->b:Lcom/viber/voip/messages/conversation/ai;

    invoke-virtual {v1, p1}, Lcom/viber/voip/messages/conversation/ai;->e(I)Lcom/viber/voip/messages/conversation/an;

    move-result-object v1

    .line 65
    :goto_0
    if-nez v1, :cond_2

    .line 71
    :cond_0
    :goto_1
    return v0

    .line 64
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 67
    :cond_2
    const-string/jumbo v2, "text"

    invoke-virtual {v1}, Lcom/viber/voip/messages/conversation/an;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "sms"

    invoke-virtual {v1}, Lcom/viber/voip/messages/conversation/an;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 71
    const/4 v0, 0x2

    goto :goto_1
.end method

.method public f()Lcom/viber/voip/messages/conversation/ai;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/viber/voip/messages/ui/popup/a/l;->b:Lcom/viber/voip/messages/conversation/ai;

    return-object v0
.end method

.method public g()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/viber/voip/messages/ui/popup/a/l;->a:Landroid/app/Activity;

    return-object v0
.end method
