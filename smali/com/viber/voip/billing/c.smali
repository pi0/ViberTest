.class Lcom/viber/voip/billing/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/viber/voip/billing/v;

.field final synthetic b:Lcom/viber/voip/billing/a;


# direct methods
.method constructor <init>(Lcom/viber/voip/billing/a;Lcom/viber/voip/billing/v;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 692
    iput-object p1, p0, Lcom/viber/voip/billing/c;->b:Lcom/viber/voip/billing/a;

    iput-object p2, p0, Lcom/viber/voip/billing/c;->a:Lcom/viber/voip/billing/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 695
    iget-object v0, p0, Lcom/viber/voip/billing/c;->a:Lcom/viber/voip/billing/v;

    iget-object v1, p0, Lcom/viber/voip/billing/c;->b:Lcom/viber/voip/billing/a;

    invoke-static {v1}, Lcom/viber/voip/billing/a;->a(Lcom/viber/voip/billing/a;)Lcom/viber/voip/billing/r;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/viber/voip/billing/v;->a(Lcom/viber/voip/billing/r;)V

    .line 696
    return-void
.end method
