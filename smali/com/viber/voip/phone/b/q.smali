.class Lcom/viber/voip/phone/b/q;
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
    .line 480
    iput-object p1, p0, Lcom/viber/voip/phone/b/q;->a:Lcom/viber/voip/phone/b/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 483
    iget-object v0, p0, Lcom/viber/voip/phone/b/q;->a:Lcom/viber/voip/phone/b/p;

    iget-object v0, v0, Lcom/viber/voip/phone/b/p;->a:Lcom/viber/voip/phone/b/k;

    invoke-static {v0}, Lcom/viber/voip/phone/b/k;->a(Lcom/viber/voip/phone/b/k;)Lcom/viber/voip/phone/b/o;

    move-result-object v0

    iget-object v0, v0, Lcom/viber/voip/phone/b/o;->a:Lcom/viber/voip/phone/h;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/viber/voip/phone/h;->setChecked(Z)V

    .line 484
    return-void
.end method
