.class Lcom/viber/voip/phone/b/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/viber/voip/phone/b/p;


# direct methods
.method constructor <init>(Lcom/viber/voip/phone/b/p;)V
    .locals 0
    .parameter

    .prologue
    .line 502
    iput-object p1, p0, Lcom/viber/voip/phone/b/s;->a:Lcom/viber/voip/phone/b/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 505
    iget-object v0, p0, Lcom/viber/voip/phone/b/s;->a:Lcom/viber/voip/phone/b/p;

    iget-object v0, v0, Lcom/viber/voip/phone/b/p;->a:Lcom/viber/voip/phone/b/k;

    iget-object v0, v0, Lcom/viber/voip/phone/b/k;->d:Lcom/viber/voip/phone/CallCard;

    const v1, 0x7f0c0412

    invoke-virtual {v0, v1}, Lcom/viber/voip/phone/CallCard;->setChronometerText(I)V

    .line 506
    iget-object v0, p0, Lcom/viber/voip/phone/b/s;->a:Lcom/viber/voip/phone/b/p;

    iget-object v0, v0, Lcom/viber/voip/phone/b/p;->a:Lcom/viber/voip/phone/b/k;

    invoke-static {v0}, Lcom/viber/voip/phone/b/k;->a(Lcom/viber/voip/phone/b/k;)Lcom/viber/voip/phone/b/o;

    move-result-object v0

    iget-object v0, v0, Lcom/viber/voip/phone/b/o;->c:Lcom/viber/voip/phone/h;

    invoke-virtual {v0, v2}, Lcom/viber/voip/phone/h;->setEnabled(Z)V

    .line 507
    iget-object v0, p0, Lcom/viber/voip/phone/b/s;->a:Lcom/viber/voip/phone/b/p;

    iget-object v0, v0, Lcom/viber/voip/phone/b/p;->a:Lcom/viber/voip/phone/b/k;

    invoke-static {v0}, Lcom/viber/voip/phone/b/k;->a(Lcom/viber/voip/phone/b/k;)Lcom/viber/voip/phone/b/o;

    move-result-object v0

    iget-object v0, v0, Lcom/viber/voip/phone/b/o;->e:Lcom/viber/voip/phone/h;

    invoke-virtual {v0, v2}, Lcom/viber/voip/phone/h;->setEnabled(Z)V

    .line 509
    return-void
.end method
