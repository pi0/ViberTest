.class Lcom/viber/voip/contacts/ui/bb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/viber/voip/contacts/ui/ap;


# direct methods
.method constructor <init>(Lcom/viber/voip/contacts/ui/ap;)V
    .locals 0
    .parameter

    .prologue
    .line 632
    iput-object p1, p0, Lcom/viber/voip/contacts/ui/bb;->a:Lcom/viber/voip/contacts/ui/ap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 635
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/bb;->a:Lcom/viber/voip/contacts/ui/ap;

    invoke-virtual {v0}, Lcom/viber/voip/contacts/ui/ap;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 636
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/bb;->a:Lcom/viber/voip/contacts/ui/ap;

    iget-object v0, v0, Lcom/viber/voip/contacts/ui/ap;->a:Lcom/viber/voip/contacts/ui/cb;

    iget-object v1, p0, Lcom/viber/voip/contacts/ui/bb;->a:Lcom/viber/voip/contacts/ui/ap;

    invoke-virtual {v1}, Lcom/viber/voip/contacts/ui/ap;->c()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/viber/voip/contacts/ui/cb;->c(J)V

    .line 638
    :cond_0
    return-void
.end method
