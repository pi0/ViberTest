.class Lcom/viber/voip/rakuten/w;
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
    .line 174
    iput-object p1, p0, Lcom/viber/voip/rakuten/w;->a:Lcom/viber/voip/rakuten/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 176
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 177
    invoke-static {}, Lcom/viber/voip/rakuten/l;->a()Lcom/viber/voip/rakuten/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/rakuten/l;->f()V

    .line 178
    return-void
.end method
