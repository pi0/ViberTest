.class Lcom/viber/voip/viberout/ui/be;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/viber/voip/viberout/ui/ViberOutWebViewActivity;


# direct methods
.method constructor <init>(Lcom/viber/voip/viberout/ui/ViberOutWebViewActivity;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 193
    iput-object p1, p0, Lcom/viber/voip/viberout/ui/be;->b:Lcom/viber/voip/viberout/ui/ViberOutWebViewActivity;

    iput-object p2, p0, Lcom/viber/voip/viberout/ui/be;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 196
    iget-object v0, p0, Lcom/viber/voip/viberout/ui/be;->a:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 197
    iget-object v0, p0, Lcom/viber/voip/viberout/ui/be;->b:Lcom/viber/voip/viberout/ui/ViberOutWebViewActivity;

    invoke-static {v0}, Lcom/viber/voip/viberout/ui/ViberOutWebViewActivity;->d(Lcom/viber/voip/viberout/ui/ViberOutWebViewActivity;)V

    .line 198
    return-void
.end method
