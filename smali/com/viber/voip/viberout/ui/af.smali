.class Lcom/viber/voip/viberout/ui/af;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:[Landroid/app/ProgressDialog;

.field final synthetic b:Lcom/viber/voip/viberout/ui/ae;


# direct methods
.method constructor <init>(Lcom/viber/voip/viberout/ui/ae;[Landroid/app/ProgressDialog;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 783
    iput-object p1, p0, Lcom/viber/voip/viberout/ui/af;->b:Lcom/viber/voip/viberout/ui/ae;

    iput-object p2, p0, Lcom/viber/voip/viberout/ui/af;->a:[Landroid/app/ProgressDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3
    .parameter

    .prologue
    .line 786
    iget-object v0, p0, Lcom/viber/voip/viberout/ui/af;->a:[Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 787
    iget-object v0, p0, Lcom/viber/voip/viberout/ui/af;->b:Lcom/viber/voip/viberout/ui/ae;

    iget-object v0, v0, Lcom/viber/voip/viberout/ui/ae;->e:Lcom/viber/voip/viberout/ui/ViberOutDialogs;

    invoke-virtual {v0}, Lcom/viber/voip/viberout/ui/ViberOutDialogs;->finish()V

    .line 788
    return-void
.end method
