.class Lcom/viber/voip/billing/cl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/billing/cj;


# instance fields
.field final synthetic a:Lcom/viber/voip/process/b;

.field final synthetic b:Lcom/viber/voip/billing/ck;


# direct methods
.method constructor <init>(Lcom/viber/voip/billing/ck;Lcom/viber/voip/process/b;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 254
    iput-object p1, p0, Lcom/viber/voip/billing/cl;->b:Lcom/viber/voip/billing/ck;

    iput-object p2, p0, Lcom/viber/voip/billing/cl;->a:Lcom/viber/voip/process/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 2
    .parameter

    .prologue
    .line 257
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 258
    invoke-static {}, Lcom/viber/voip/billing/ck;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 259
    iget-object v1, p0, Lcom/viber/voip/billing/cl;->a:Lcom/viber/voip/process/b;

    invoke-interface {v1, v0}, Lcom/viber/voip/process/b;->a(Landroid/os/Bundle;)V

    .line 260
    return-void
.end method
