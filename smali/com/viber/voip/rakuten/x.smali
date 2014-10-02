.class Lcom/viber/voip/rakuten/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/viber/voip/rakuten/v;


# direct methods
.method constructor <init>(Lcom/viber/voip/rakuten/v;)V
    .locals 0
    .parameter

    .prologue
    .line 166
    iput-object p1, p0, Lcom/viber/voip/rakuten/x;->a:Lcom/viber/voip/rakuten/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 168
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 169
    invoke-static {}, Lcom/viber/voip/rakuten/l;->a()Lcom/viber/voip/rakuten/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/rakuten/l;->e()V

    .line 170
    return-void
.end method
