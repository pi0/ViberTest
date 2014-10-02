.class Lcom/viber/voip/market/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/viber/voip/market/g;


# direct methods
.method constructor <init>(Lcom/viber/voip/market/g;)V
    .locals 0
    .parameter

    .prologue
    .line 414
    iput-object p1, p0, Lcom/viber/voip/market/h;->a:Lcom/viber/voip/market/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 417
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 418
    return-void
.end method
