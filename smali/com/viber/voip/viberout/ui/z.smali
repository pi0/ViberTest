.class Lcom/viber/voip/viberout/ui/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Lcom/viber/voip/viberout/ui/ViberOutDialogs;


# direct methods
.method constructor <init>(Lcom/viber/voip/viberout/ui/ViberOutDialogs;)V
    .locals 0
    .parameter

    .prologue
    .line 606
    iput-object p1, p0, Lcom/viber/voip/viberout/ui/z;->a:Lcom/viber/voip/viberout/ui/ViberOutDialogs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter

    .prologue
    .line 609
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 610
    iget-object v0, p0, Lcom/viber/voip/viberout/ui/z;->a:Lcom/viber/voip/viberout/ui/ViberOutDialogs;

    invoke-virtual {v0}, Lcom/viber/voip/viberout/ui/ViberOutDialogs;->finish()V

    .line 611
    return-void
.end method
