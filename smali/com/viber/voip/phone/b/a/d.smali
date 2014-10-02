.class public Lcom/viber/voip/phone/b/a/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Lcom/viber/voip/phone/call/k;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;Lcom/viber/voip/phone/call/k;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/viber/voip/phone/b/a/d;->a:Landroid/widget/TextView;

    .line 15
    iput-object p2, p0, Lcom/viber/voip/phone/b/a/d;->b:Lcom/viber/voip/phone/call/k;

    .line 16
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const-wide/16 v3, 0x3e8

    .line 20
    iget-object v0, p0, Lcom/viber/voip/phone/b/a/d;->b:Lcom/viber/voip/phone/call/k;

    invoke-virtual {v0}, Lcom/viber/voip/phone/call/k;->h()Z

    move-result v0

    if-nez v0, :cond_0

    .line 25
    :goto_0
    return-void

    .line 23
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/phone/b/a/d;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/viber/voip/phone/b/a/d;->b:Lcom/viber/voip/phone/call/k;

    invoke-virtual {v1}, Lcom/viber/voip/phone/call/k;->d()Lcom/viber/voip/phone/call/n;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/voip/phone/call/n;->x()J

    move-result-wide v1

    div-long/2addr v1, v3

    invoke-static {v1, v2}, Lcom/viber/voip/util/ak;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 24
    iget-object v0, p0, Lcom/viber/voip/phone/b/a/d;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p0, v3, v4}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
