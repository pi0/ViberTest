.class Lcom/viber/voip/contacts/ui/cf;
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
    .line 465
    iput-object p1, p0, Lcom/viber/voip/contacts/ui/cf;->b:Lcom/viber/voip/contacts/ui/cb;

    iput-wide p2, p0, Lcom/viber/voip/contacts/ui/cf;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 469
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/cf;->b:Lcom/viber/voip/contacts/ui/cb;

    iget-object v1, p0, Lcom/viber/voip/contacts/ui/cf;->b:Lcom/viber/voip/contacts/ui/cb;

    iget-object v1, v1, Lcom/viber/voip/contacts/ui/cb;->a:Landroid/support/v4/app/FragmentActivity;

    const v2, 0x7f0c04a3

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lcom/viber/voip/contacts/ui/cf;->a:J

    invoke-static {v0, v1, v2, v3}, Lcom/viber/voip/contacts/ui/cb;->a(Lcom/viber/voip/contacts/ui/cb;Ljava/lang/String;J)V

    .line 470
    return-void
.end method
