.class Lcom/viber/voip/viberout/ui/az;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/content/DialogInterface$OnClickListener;

.field final synthetic b:Lcom/viber/voip/viberout/ui/ay;


# direct methods
.method constructor <init>(Lcom/viber/voip/viberout/ui/ay;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 907
    iput-object p1, p0, Lcom/viber/voip/viberout/ui/az;->b:Lcom/viber/voip/viberout/ui/ay;

    iput-object p2, p0, Lcom/viber/voip/viberout/ui/az;->a:Landroid/content/DialogInterface$OnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 910
    iget-object v0, p0, Lcom/viber/voip/viberout/ui/az;->a:Landroid/content/DialogInterface$OnClickListener;

    iget-object v1, p0, Lcom/viber/voip/viberout/ui/az;->b:Lcom/viber/voip/viberout/ui/ay;

    invoke-static {v1}, Lcom/viber/voip/viberout/ui/ay;->a(Lcom/viber/voip/viberout/ui/ay;)Landroid/app/AlertDialog;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 911
    return-void
.end method
