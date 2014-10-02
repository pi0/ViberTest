.class Lcom/viber/voip/billing/cc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/viber/voip/billing/bv;


# direct methods
.method constructor <init>(Lcom/viber/voip/billing/bv;)V
    .locals 0
    .parameter

    .prologue
    .line 189
    iput-object p1, p0, Lcom/viber/voip/billing/cc;->a:Lcom/viber/voip/billing/bv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 192
    const-string/jumbo v0, "Checking helper"

    invoke-static {v0}, Lcom/viber/voip/billing/bv;->a(Ljava/lang/String;)V

    .line 193
    iget-object v0, p0, Lcom/viber/voip/billing/cc;->a:Lcom/viber/voip/billing/bv;

    invoke-virtual {v0}, Lcom/viber/voip/billing/bv;->d()Lcom/viber/voip/billing/cs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/billing/cs;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/viber/voip/billing/cc;->a:Lcom/viber/voip/billing/bv;

    invoke-static {v0}, Lcom/viber/voip/billing/bv;->b(Lcom/viber/voip/billing/bv;)V

    .line 196
    :cond_0
    return-void
.end method
