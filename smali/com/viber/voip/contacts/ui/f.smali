.class Lcom/viber/voip/contacts/ui/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/viber/voip/billing/ae;

.field final synthetic b:Lcom/viber/voip/contacts/ui/ContactDetailsFragment;


# direct methods
.method constructor <init>(Lcom/viber/voip/contacts/ui/ContactDetailsFragment;Lcom/viber/voip/billing/ae;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 823
    iput-object p1, p0, Lcom/viber/voip/contacts/ui/f;->b:Lcom/viber/voip/contacts/ui/ContactDetailsFragment;

    iput-object p2, p0, Lcom/viber/voip/contacts/ui/f;->a:Lcom/viber/voip/billing/ae;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 826
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/a/a;->v:Lcom/viber/voip/a/g;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/viber/voip/a/g;->e(Z)Lcom/viber/voip/a/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    .line 827
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/f;->b:Lcom/viber/voip/contacts/ui/ContactDetailsFragment;

    invoke-virtual {v0}, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/contacts/ui/f;->a:Lcom/viber/voip/billing/ae;

    invoke-static {v0, v1}, Lcom/viber/voip/viberout/ui/ViberOutDialogs;->a(Landroid/app/Activity;Lcom/viber/voip/billing/ae;)V

    .line 828
    return-void
.end method
