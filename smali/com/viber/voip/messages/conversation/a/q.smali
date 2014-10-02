.class Lcom/viber/voip/messages/conversation/a/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/messages/conversation/a/s;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/conversation/a/o;

.field private b:I


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/conversation/a/o;)V
    .locals 1
    .parameter

    .prologue
    .line 113
    iput-object p1, p0, Lcom/viber/voip/messages/conversation/a/q;->a:Lcom/viber/voip/messages/conversation/a/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    const/4 v0, -0x1

    iput v0, p0, Lcom/viber/voip/messages/conversation/a/q;->b:I

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 119
    iget-object v3, p0, Lcom/viber/voip/messages/conversation/a/q;->a:Lcom/viber/voip/messages/conversation/a/o;

    if-nez p1, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v3, v0}, Lcom/viber/voip/messages/conversation/a/o;->a(Lcom/viber/voip/messages/conversation/a/o;Z)V

    .line 120
    iput p1, p0, Lcom/viber/voip/messages/conversation/a/q;->b:I

    .line 122
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/util/b/w;->a(Landroid/content/Context;)Lcom/viber/voip/util/b/w;

    move-result-object v0

    .line 124
    const/4 v3, 0x2

    if-ne p1, v3, :cond_1

    .line 126
    invoke-virtual {v0, v1}, Lcom/viber/voip/util/b/w;->a(Z)V

    .line 130
    :goto_1
    return-void

    :cond_0
    move v0, v2

    .line 119
    goto :goto_0

    .line 128
    :cond_1
    invoke-virtual {v0, v2}, Lcom/viber/voip/util/b/w;->a(Z)V

    goto :goto_1
.end method

.method public a(III)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 137
    return-void
.end method

.method public a(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter

    .prologue
    .line 133
    return-void
.end method
