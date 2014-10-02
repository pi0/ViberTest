.class Lcom/viber/voip/market/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Landroid/widget/EditText;

.field final synthetic b:Lcom/viber/voip/market/g;


# direct methods
.method constructor <init>(Lcom/viber/voip/market/g;Landroid/widget/EditText;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 420
    iput-object p1, p0, Lcom/viber/voip/market/i;->b:Lcom/viber/voip/market/g;

    iput-object p2, p0, Lcom/viber/voip/market/i;->a:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 423
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 424
    iget-object v0, p0, Lcom/viber/voip/market/i;->b:Lcom/viber/voip/market/g;

    iget-object v0, v0, Lcom/viber/voip/market/g;->a:Lcom/viber/voip/market/MarketActivity;

    iget-object v1, p0, Lcom/viber/voip/market/i;->a:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/viber/voip/market/MarketActivity;->b(Lcom/viber/voip/market/MarketActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 425
    iget-object v0, p0, Lcom/viber/voip/market/i;->b:Lcom/viber/voip/market/g;

    iget-object v0, v0, Lcom/viber/voip/market/g;->a:Lcom/viber/voip/market/MarketActivity;

    invoke-static {v0}, Lcom/viber/voip/market/MarketActivity;->c(Lcom/viber/voip/market/MarketActivity;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearHistory()V

    .line 426
    iget-object v0, p0, Lcom/viber/voip/market/i;->b:Lcom/viber/voip/market/g;

    iget-object v0, v0, Lcom/viber/voip/market/g;->a:Lcom/viber/voip/market/MarketActivity;

    invoke-static {v0}, Lcom/viber/voip/market/MarketActivity;->a(Lcom/viber/voip/market/MarketActivity;)V

    .line 427
    return-void
.end method
