.class Lcom/viber/voip/contacts/ui/cj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/viber/voip/contacts/ui/ci;


# direct methods
.method constructor <init>(Lcom/viber/voip/contacts/ui/ci;)V
    .locals 0
    .parameter

    .prologue
    .line 537
    iput-object p1, p0, Lcom/viber/voip/contacts/ui/cj;->a:Lcom/viber/voip/contacts/ui/ci;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 541
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 542
    const-string/jumbo v1, "thread_id"

    iget-object v2, p0, Lcom/viber/voip/contacts/ui/cj;->a:Lcom/viber/voip/contacts/ui/ci;

    iget-wide v2, v2, Lcom/viber/voip/contacts/ui/ci;->a:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 543
    iget-object v1, p0, Lcom/viber/voip/contacts/ui/cj;->a:Lcom/viber/voip/contacts/ui/ci;

    iget-object v1, v1, Lcom/viber/voip/contacts/ui/ci;->b:Lcom/viber/voip/contacts/ui/cb;

    iget-object v1, v1, Lcom/viber/voip/contacts/ui/cb;->a:Landroid/support/v4/app/FragmentActivity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/FragmentActivity;->setResult(ILandroid/content/Intent;)V

    .line 544
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/cj;->a:Lcom/viber/voip/contacts/ui/ci;

    iget-object v0, v0, Lcom/viber/voip/contacts/ui/ci;->b:Lcom/viber/voip/contacts/ui/cb;

    iget-object v0, v0, Lcom/viber/voip/contacts/ui/cb;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 546
    return-void
.end method
