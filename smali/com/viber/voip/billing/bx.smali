.class Lcom/viber/voip/billing/bx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/contacts/c/d/au;


# instance fields
.field final synthetic a:Lcom/viber/voip/billing/bv;


# direct methods
.method constructor <init>(Lcom/viber/voip/billing/bv;)V
    .locals 0
    .parameter

    .prologue
    .line 70
    iput-object p1, p0, Lcom/viber/voip/billing/bx;->a:Lcom/viber/voip/billing/bv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IZ)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onSyncStateChanged state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " register:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/billing/bv;->a(Ljava/lang/String;)V

    .line 74
    invoke-static {}, Lcom/viber/voip/ViberApplication;->isActivated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    packed-switch p1, :pswitch_data_0

    .line 84
    :goto_0
    return-void

    .line 78
    :pswitch_0
    const-string/jumbo v0, "Synchronizing purchased products..."

    invoke-static {v0}, Lcom/viber/voip/billing/bv;->a(Ljava/lang/String;)V

    .line 79
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/viber/voip/billing/bv;->a(Lcom/viber/voip/billing/cj;)V

    goto :goto_0

    .line 82
    :cond_0
    const-string/jumbo v0, "prepareOnAppInit, viber not activated, not syncing products."

    invoke-static {v0}, Lcom/viber/voip/billing/bv;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 75
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
