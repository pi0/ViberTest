.class Lcom/viber/voip/rakuten/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/viber/voip/rakuten/RakutenAccountWebViewActivity;


# direct methods
.method constructor <init>(Lcom/viber/voip/rakuten/RakutenAccountWebViewActivity;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 248
    iput-object p1, p0, Lcom/viber/voip/rakuten/e;->b:Lcom/viber/voip/rakuten/RakutenAccountWebViewActivity;

    iput-object p2, p0, Lcom/viber/voip/rakuten/e;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 251
    iget-object v0, p0, Lcom/viber/voip/rakuten/e;->a:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 252
    iget-object v0, p0, Lcom/viber/voip/rakuten/e;->b:Lcom/viber/voip/rakuten/RakutenAccountWebViewActivity;

    invoke-static {v0}, Lcom/viber/voip/rakuten/RakutenAccountWebViewActivity;->h(Lcom/viber/voip/rakuten/RakutenAccountWebViewActivity;)V

    .line 253
    return-void
.end method
