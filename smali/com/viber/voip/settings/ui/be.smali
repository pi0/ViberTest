.class Lcom/viber/voip/settings/ui/be;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/viber/voip/settings/ui/bb;


# direct methods
.method constructor <init>(Lcom/viber/voip/settings/ui/bb;)V
    .locals 0
    .parameter

    .prologue
    .line 73
    iput-object p1, p0, Lcom/viber/voip/settings/ui/be;->a:Lcom/viber/voip/settings/ui/bb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 77
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 78
    return-void
.end method
