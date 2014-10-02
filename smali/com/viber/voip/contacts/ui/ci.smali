.class Lcom/viber/voip/contacts/ui/ci;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/viber/voip/contacts/ui/cb;


# direct methods
.method constructor <init>(Lcom/viber/voip/contacts/ui/cb;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 533
    iput-object p1, p0, Lcom/viber/voip/contacts/ui/ci;->b:Lcom/viber/voip/contacts/ui/cb;

    iput-wide p2, p0, Lcom/viber/voip/contacts/ui/ci;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 537
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ci;->b:Lcom/viber/voip/contacts/ui/cb;

    invoke-static {v0}, Lcom/viber/voip/contacts/ui/cb;->b(Lcom/viber/voip/contacts/ui/cb;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/viber/voip/contacts/ui/cj;

    invoke-direct {v1, p0}, Lcom/viber/voip/contacts/ui/cj;-><init>(Lcom/viber/voip/contacts/ui/ci;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 549
    return-void
.end method
