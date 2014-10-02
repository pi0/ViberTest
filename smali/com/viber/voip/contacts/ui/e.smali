.class Lcom/viber/voip/contacts/ui/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/util/ah;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/viber/voip/contacts/ui/d;


# direct methods
.method constructor <init>(Lcom/viber/voip/contacts/ui/d;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 732
    iput-object p1, p0, Lcom/viber/voip/contacts/ui/e;->b:Lcom/viber/voip/contacts/ui/d;

    iput-object p2, p0, Lcom/viber/voip/contacts/ui/e;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 736
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/contacts/ui/e;->b:Lcom/viber/voip/contacts/ui/d;

    iget-object v1, v1, Lcom/viber/voip/contacts/ui/d;->c:Lcom/viber/voip/contacts/ui/ContactDetailsFragment;

    invoke-static {v1}, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->m(Lcom/viber/voip/contacts/ui/ContactDetailsFragment;)Lcom/viber/voip/a/k;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/voip/a/k;->k()Lcom/viber/voip/a/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    .line 737
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/e;->a:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/viber/voip/contacts/ui/bp;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 738
    return-void
.end method
