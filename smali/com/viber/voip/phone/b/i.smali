.class Lcom/viber/voip/phone/b/i;
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
    .line 264
    iput-object p1, p0, Lcom/viber/voip/phone/b/i;->a:Lcom/viber/voip/phone/b/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/viber/voip/phone/b/e;Lcom/viber/voip/phone/b/f;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 264
    invoke-direct {p0, p1}, Lcom/viber/voip/phone/b/i;-><init>(Lcom/viber/voip/phone/b/e;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    .line 268
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/phone/b/i;->a:Lcom/viber/voip/phone/b/e;

    invoke-static {v1}, Lcom/viber/voip/phone/b/e;->a(Lcom/viber/voip/phone/b/e;)Lcom/viber/voip/phone/call/k;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/voip/phone/call/k;->c()Lcom/viber/voip/phone/call/CallerInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/voip/phone/call/CallerInfo;->b()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/viber/voip/util/gw;->a(Landroid/content/Context;Ljava/lang/String;ZLcom/viber/voip/a/k;)V

    .line 269
    return-void
.end method
