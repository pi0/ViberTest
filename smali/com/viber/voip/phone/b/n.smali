.class Lcom/viber/voip/phone/b/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/viber/voip/phone/b/k;


# direct methods
.method constructor <init>(Lcom/viber/voip/phone/b/k;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 463
    iput-object p1, p0, Lcom/viber/voip/phone/b/n;->b:Lcom/viber/voip/phone/b/k;

    iput-boolean p2, p0, Lcom/viber/voip/phone/b/n;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 466
    iget-object v0, p0, Lcom/viber/voip/phone/b/n;->b:Lcom/viber/voip/phone/b/k;

    invoke-static {v0}, Lcom/viber/voip/phone/b/k;->a(Lcom/viber/voip/phone/b/k;)Lcom/viber/voip/phone/b/o;

    move-result-object v0

    iget-object v0, v0, Lcom/viber/voip/phone/b/o;->f:Lcom/viber/voip/phone/h;

    iget-boolean v1, p0, Lcom/viber/voip/phone/b/n;->a:Z

    invoke-virtual {v0, v1}, Lcom/viber/voip/phone/h;->setChecked(Z)V

    .line 467
    return-void
.end method
