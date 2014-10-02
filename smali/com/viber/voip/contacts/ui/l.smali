.class Lcom/viber/voip/contacts/ui/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/util/ai;


# instance fields
.field final synthetic a:Lcom/viber/voip/contacts/ui/ae;

.field final synthetic b:Lcom/viber/voip/contacts/ui/ContactDetailsFragment;


# direct methods
.method constructor <init>(Lcom/viber/voip/contacts/ui/ContactDetailsFragment;Lcom/viber/voip/contacts/ui/ae;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1147
    iput-object p1, p0, Lcom/viber/voip/contacts/ui/l;->b:Lcom/viber/voip/contacts/ui/ContactDetailsFragment;

    iput-object p2, p0, Lcom/viber/voip/contacts/ui/l;->a:Lcom/viber/voip/contacts/ui/ae;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 1157
    return-void
.end method

.method public a(ZLjava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1150
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/l;->a:Lcom/viber/voip/contacts/ui/ae;

    invoke-virtual {v0, p2}, Lcom/viber/voip/contacts/ui/ae;->a(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 1151
    iget-object v1, p0, Lcom/viber/voip/contacts/ui/l;->b:Lcom/viber/voip/contacts/ui/ContactDetailsFragment;

    invoke-static {v1, v0}, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->a(Lcom/viber/voip/contacts/ui/ContactDetailsFragment;Landroid/content/Intent;)V

    .line 1152
    return-void
.end method
