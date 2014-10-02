.class Lcom/viber/voip/phone/b/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/viber/voip/phone/b/e;


# direct methods
.method private constructor <init>(Lcom/viber/voip/phone/b/e;)V
    .locals 0
    .parameter

    .prologue
    .line 272
    iput-object p1, p0, Lcom/viber/voip/phone/b/g;->a:Lcom/viber/voip/phone/b/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/viber/voip/phone/b/e;Lcom/viber/voip/phone/b/f;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 272
    invoke-direct {p0, p1}, Lcom/viber/voip/phone/b/g;-><init>(Lcom/viber/voip/phone/b/e;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter

    .prologue
    const-wide/16 v2, 0x0

    .line 276
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/phone/b/g;->a:Lcom/viber/voip/phone/b/e;

    invoke-static {v1}, Lcom/viber/voip/phone/b/e;->a(Lcom/viber/voip/phone/b/e;)Lcom/viber/voip/phone/call/k;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/voip/phone/call/k;->c()Lcom/viber/voip/phone/call/CallerInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/voip/phone/call/CallerInfo;->b()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/viber/voip/phone/b/g;->a:Lcom/viber/voip/phone/b/e;

    invoke-static {v4}, Lcom/viber/voip/phone/b/e;->a(Lcom/viber/voip/phone/b/e;)Lcom/viber/voip/phone/call/k;

    move-result-object v4

    invoke-virtual {v4}, Lcom/viber/voip/phone/call/k;->c()Lcom/viber/voip/phone/call/CallerInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/viber/voip/phone/call/CallerInfo;->a()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    move-wide v4, v2

    invoke-static/range {v0 .. v7}, Lcom/viber/voip/util/gn;->a(Landroid/content/Context;Ljava/lang/String;JJLjava/lang/String;Landroid/net/Uri;)V

    .line 277
    return-void
.end method
