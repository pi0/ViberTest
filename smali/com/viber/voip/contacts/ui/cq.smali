.class Lcom/viber/voip/contacts/ui/cq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/viber/voip/contacts/ui/cp;


# direct methods
.method constructor <init>(Lcom/viber/voip/contacts/ui/cp;)V
    .locals 0
    .parameter

    .prologue
    .line 71
    iput-object p1, p0, Lcom/viber/voip/contacts/ui/cq;->a:Lcom/viber/voip/contacts/ui/cp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 74
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/cq;->a:Lcom/viber/voip/contacts/ui/cp;

    invoke-static {v0}, Lcom/viber/voip/contacts/ui/cp;->a(Lcom/viber/voip/contacts/ui/cp;)V

    .line 75
    return-void
.end method
