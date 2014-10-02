.class Lcom/viber/voip/contacts/ui/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/util/ai;


# instance fields
.field final synthetic a:Lcom/viber/voip/contacts/d/b;

.field final synthetic b:Lcom/viber/voip/contacts/ui/ContactDetailsFragment;


# direct methods
.method constructor <init>(Lcom/viber/voip/contacts/ui/ContactDetailsFragment;Lcom/viber/voip/contacts/d/b;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1096
    iput-object p1, p0, Lcom/viber/voip/contacts/ui/k;->b:Lcom/viber/voip/contacts/ui/ContactDetailsFragment;

    iput-object p2, p0, Lcom/viber/voip/contacts/ui/k;->a:Lcom/viber/voip/contacts/d/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 1109
    return-void
.end method

.method public a(ZLjava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 1099
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/k;->b:Lcom/viber/voip/contacts/ui/ContactDetailsFragment;

    iget-object v1, p0, Lcom/viber/voip/contacts/ui/k;->b:Lcom/viber/voip/contacts/ui/ContactDetailsFragment;

    invoke-static {v1}, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->s(Lcom/viber/voip/contacts/ui/ContactDetailsFragment;)Ljava/util/Collection;

    move-result-object v1

    iget-object v2, p0, Lcom/viber/voip/contacts/ui/k;->a:Lcom/viber/voip/contacts/d/b;

    invoke-static {v0, v1, v2, p2}, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->a(Lcom/viber/voip/contacts/ui/ContactDetailsFragment;Ljava/util/Collection;Lcom/viber/voip/contacts/d/b;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 1100
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 1101
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/contacts/d/a;

    .line 1102
    iget-object v1, p0, Lcom/viber/voip/contacts/ui/k;->b:Lcom/viber/voip/contacts/ui/ContactDetailsFragment;

    invoke-static {v1, v0}, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->b(Lcom/viber/voip/contacts/ui/ContactDetailsFragment;Lcom/viber/voip/contacts/d/a;)V

    .line 1104
    :cond_0
    return-void
.end method
