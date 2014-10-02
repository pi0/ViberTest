.class Lcom/viber/voip/contacts/ui/cu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Landroid/content/DialogInterface$OnClickListener;

.field final synthetic b:Lcom/viber/voip/contacts/ui/ct;


# direct methods
.method constructor <init>(Lcom/viber/voip/contacts/ui/ct;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 110
    iput-object p1, p0, Lcom/viber/voip/contacts/ui/cu;->b:Lcom/viber/voip/contacts/ui/ct;

    iput-object p2, p0, Lcom/viber/voip/contacts/ui/cu;->a:Landroid/content/DialogInterface$OnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 113
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/cu;->a:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/cu;->a:Landroid/content/DialogInterface$OnClickListener;

    invoke-interface {v0, p1, p2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 116
    :cond_0
    return-void
.end method
