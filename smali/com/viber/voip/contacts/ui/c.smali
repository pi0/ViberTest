.class Lcom/viber/voip/contacts/ui/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/util/ah;


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/viber/voip/contacts/ui/b;


# direct methods
.method constructor <init>(Lcom/viber/voip/contacts/ui/b;Landroid/app/Activity;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 709
    iput-object p1, p0, Lcom/viber/voip/contacts/ui/c;->b:Lcom/viber/voip/contacts/ui/b;

    iput-object p2, p0, Lcom/viber/voip/contacts/ui/c;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 714
    const-string/jumbo v0, "tel"

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 715
    new-instance v1, Lcom/viber/voip/billing/ae;

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/viber/voip/billing/ae;-><init>(Ljava/lang/String;)V

    .line 716
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/c;->a:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/viber/voip/viberout/ui/ViberOutDialogs;->a(Landroid/app/Activity;Lcom/viber/voip/billing/ae;)V

    .line 717
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/a/a;->v:Lcom/viber/voip/a/g;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/viber/voip/a/g;->e(Z)Lcom/viber/voip/a/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    .line 718
    return-void
.end method
