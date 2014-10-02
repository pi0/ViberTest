.class Lcom/viber/voip/viberout/ui/ad;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:[Landroid/app/ProgressDialog;

.field final synthetic b:Lcom/viber/voip/viberout/ui/ViberOutDialogs;


# direct methods
.method constructor <init>(Lcom/viber/voip/viberout/ui/ViberOutDialogs;[Landroid/app/ProgressDialog;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 228
    iput-object p1, p0, Lcom/viber/voip/viberout/ui/ad;->b:Lcom/viber/voip/viberout/ui/ViberOutDialogs;

    iput-object p2, p0, Lcom/viber/voip/viberout/ui/ad;->a:[Landroid/app/ProgressDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3
    .parameter

    .prologue
    .line 231
    iget-object v0, p0, Lcom/viber/voip/viberout/ui/ad;->a:[Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 232
    iget-object v0, p0, Lcom/viber/voip/viberout/ui/ad;->b:Lcom/viber/voip/viberout/ui/ViberOutDialogs;

    invoke-virtual {v0}, Lcom/viber/voip/viberout/ui/ViberOutDialogs;->finish()V

    .line 233
    return-void
.end method
