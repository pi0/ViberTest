.class final Lcom/viber/voip/viberout/ui/an;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Lcom/viber/voip/viberout/ui/aw;


# direct methods
.method constructor <init>(Lcom/viber/voip/viberout/ui/aw;)V
    .locals 0
    .parameter

    .prologue
    .line 1041
    iput-object p1, p0, Lcom/viber/voip/viberout/ui/an;->a:Lcom/viber/voip/viberout/ui/aw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter

    .prologue
    .line 1044
    iget-object v0, p0, Lcom/viber/voip/viberout/ui/an;->a:Lcom/viber/voip/viberout/ui/aw;

    invoke-interface {v0}, Lcom/viber/voip/viberout/ui/aw;->a()V

    .line 1045
    return-void
.end method
