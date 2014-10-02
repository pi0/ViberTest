.class Lcom/viber/voip/contacts/ui/z;
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
    .line 695
    iput-object p1, p0, Lcom/viber/voip/contacts/ui/z;->a:Lcom/viber/voip/contacts/ui/ContactDetailsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 698
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/z;->a:Lcom/viber/voip/contacts/ui/ContactDetailsFragment;

    sget-object v1, Lcom/viber/voip/contacts/ui/ah;->b:Lcom/viber/voip/contacts/ui/ah;

    invoke-static {v0, v1}, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->a(Lcom/viber/voip/contacts/ui/ContactDetailsFragment;Lcom/viber/voip/contacts/ui/ah;)V

    .line 699
    return-void
.end method
