.class Lcom/viber/voip/contacts/ui/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/viber/voip/contacts/ui/ContactDetailsFragment;


# direct methods
.method constructor <init>(Lcom/viber/voip/contacts/ui/ContactDetailsFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 687
    iput-object p1, p0, Lcom/viber/voip/contacts/ui/y;->a:Lcom/viber/voip/contacts/ui/ContactDetailsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 690
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/a/a;->v:Lcom/viber/voip/a/g;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/viber/voip/a/g;->e(Z)Lcom/viber/voip/a/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    .line 691
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/y;->a:Lcom/viber/voip/contacts/ui/ContactDetailsFragment;

    sget-object v1, Lcom/viber/voip/contacts/ui/ah;->a:Lcom/viber/voip/contacts/ui/ah;

    invoke-static {v0, v1}, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->a(Lcom/viber/voip/contacts/ui/ContactDetailsFragment;Lcom/viber/voip/contacts/ui/ah;)V

    .line 692
    return-void
.end method
