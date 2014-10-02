.class Lcom/viber/voip/ui/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/viber/voip/ui/n;


# direct methods
.method constructor <init>(Lcom/viber/voip/ui/n;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 93
    iput-object p1, p0, Lcom/viber/voip/ui/o;->b:Lcom/viber/voip/ui/n;

    iput p2, p0, Lcom/viber/voip/ui/o;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 96
    iget-object v0, p0, Lcom/viber/voip/ui/o;->b:Lcom/viber/voip/ui/n;

    invoke-static {v0}, Lcom/viber/voip/ui/n;->a(Lcom/viber/voip/ui/n;)Lcom/viber/voip/ui/p;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/ui/o;->b:Lcom/viber/voip/ui/n;

    invoke-static {v0}, Lcom/viber/voip/ui/n;->a(Lcom/viber/voip/ui/n;)Lcom/viber/voip/ui/p;

    move-result-object v0

    iget v1, p0, Lcom/viber/voip/ui/o;->a:I

    invoke-interface {v0, p1, v1}, Lcom/viber/voip/ui/p;->a(Landroid/view/View;I)V

    .line 97
    :cond_0
    return-void
.end method
