.class final Lcom/viber/voip/viberout/ui/al;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Landroid/content/DialogInterface$OnCancelListener;


# direct methods
.method constructor <init>(Landroid/content/DialogInterface$OnCancelListener;)V
    .locals 0
    .parameter

    .prologue
    .line 970
    iput-object p1, p0, Lcom/viber/voip/viberout/ui/al;->a:Landroid/content/DialogInterface$OnCancelListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 972
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 973
    iget-object v0, p0, Lcom/viber/voip/viberout/ui/al;->a:Landroid/content/DialogInterface$OnCancelListener;

    if-eqz v0, :cond_0

    .line 974
    iget-object v0, p0, Lcom/viber/voip/viberout/ui/al;->a:Landroid/content/DialogInterface$OnCancelListener;

    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnCancelListener;->onCancel(Landroid/content/DialogInterface;)V

    .line 976
    :cond_0
    return-void
.end method
