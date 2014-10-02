.class Lcom/viber/voip/billing/ba;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/viber/voip/billing/ap;


# direct methods
.method constructor <init>(Lcom/viber/voip/billing/ap;)V
    .locals 0
    .parameter

    .prologue
    .line 928
    iput-object p1, p0, Lcom/viber/voip/billing/ba;->a:Lcom/viber/voip/billing/ap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 931
    iget-object v0, p0, Lcom/viber/voip/billing/ba;->a:Lcom/viber/voip/billing/ap;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/viber/voip/billing/ap;->a(Lcom/viber/voip/billing/ap;Z)V

    .line 932
    return-void
.end method
