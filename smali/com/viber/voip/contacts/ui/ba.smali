.class Lcom/viber/voip/contacts/ui/ba;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/viber/voip/contacts/ui/ap;


# direct methods
.method constructor <init>(Lcom/viber/voip/contacts/ui/ap;)V
    .locals 0
    .parameter

    .prologue
    .line 622
    iput-object p1, p0, Lcom/viber/voip/contacts/ui/ba;->a:Lcom/viber/voip/contacts/ui/ap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 625
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ba;->a:Lcom/viber/voip/contacts/ui/ap;

    invoke-virtual {v0}, Lcom/viber/voip/contacts/ui/ap;->k()V

    .line 626
    return-void
.end method
