.class Lcom/viber/voip/phone/b/t;
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
    .line 516
    iput-object p1, p0, Lcom/viber/voip/phone/b/t;->a:Lcom/viber/voip/phone/b/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 519
    iget-object v0, p0, Lcom/viber/voip/phone/b/t;->a:Lcom/viber/voip/phone/b/p;

    iget-object v0, v0, Lcom/viber/voip/phone/b/p;->a:Lcom/viber/voip/phone/b/k;

    iget-object v0, v0, Lcom/viber/voip/phone/b/k;->d:Lcom/viber/voip/phone/CallCard;

    invoke-virtual {v0}, Lcom/viber/voip/phone/CallCard;->a()V

    .line 520
    iget-object v0, p0, Lcom/viber/voip/phone/b/t;->a:Lcom/viber/voip/phone/b/p;

    iget-object v0, v0, Lcom/viber/voip/phone/b/p;->a:Lcom/viber/voip/phone/b/k;

    invoke-static {v0}, Lcom/viber/voip/phone/b/k;->a(Lcom/viber/voip/phone/b/k;)Lcom/viber/voip/phone/b/o;

    move-result-object v0

    iget-object v0, v0, Lcom/viber/voip/phone/b/o;->c:Lcom/viber/voip/phone/h;

    invoke-virtual {v0, v1}, Lcom/viber/voip/phone/h;->setEnabled(Z)V

    .line 521
    iget-object v0, p0, Lcom/viber/voip/phone/b/t;->a:Lcom/viber/voip/phone/b/p;

    iget-object v0, v0, Lcom/viber/voip/phone/b/p;->a:Lcom/viber/voip/phone/b/k;

    invoke-static {v0}, Lcom/viber/voip/phone/b/k;->a(Lcom/viber/voip/phone/b/k;)Lcom/viber/voip/phone/b/o;

    move-result-object v0

    iget-object v0, v0, Lcom/viber/voip/phone/b/o;->e:Lcom/viber/voip/phone/h;

    invoke-virtual {v0, v1}, Lcom/viber/voip/phone/h;->setEnabled(Z)V

    .line 523
    return-void
.end method
