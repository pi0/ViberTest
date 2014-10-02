.class Lcom/viber/voip/calls/ui/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/viber/voip/calls/ui/k;


# direct methods
.method constructor <init>(Lcom/viber/voip/calls/ui/k;)V
    .locals 0
    .parameter

    .prologue
    .line 918
    iput-object p1, p0, Lcom/viber/voip/calls/ui/l;->a:Lcom/viber/voip/calls/ui/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 922
    iget-object v0, p0, Lcom/viber/voip/calls/ui/l;->a:Lcom/viber/voip/calls/ui/k;

    iget-object v0, v0, Lcom/viber/voip/calls/ui/k;->b:Lcom/viber/voip/calls/ui/PhoneFragment;

    iget-object v1, p0, Lcom/viber/voip/calls/ui/l;->a:Lcom/viber/voip/calls/ui/k;

    invoke-static {v1}, Lcom/viber/voip/calls/ui/k;->a(Lcom/viber/voip/calls/ui/k;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/calls/ui/PhoneFragment;->b(I)V

    .line 923
    iget-object v0, p0, Lcom/viber/voip/calls/ui/l;->a:Lcom/viber/voip/calls/ui/k;

    iget-object v0, v0, Lcom/viber/voip/calls/ui/k;->b:Lcom/viber/voip/calls/ui/PhoneFragment;

    invoke-static {v0}, Lcom/viber/voip/calls/ui/PhoneFragment;->a(Lcom/viber/voip/calls/ui/PhoneFragment;)V

    .line 924
    return-void
.end method
