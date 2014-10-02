.class Lcom/viber/voip/br;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/viber/voip/SystemDialogActivity;


# direct methods
.method constructor <init>(Lcom/viber/voip/SystemDialogActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 400
    iput-object p1, p0, Lcom/viber/voip/br;->a:Lcom/viber/voip/SystemDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 403
    iget-object v0, p0, Lcom/viber/voip/br;->a:Lcom/viber/voip/SystemDialogActivity;

    iget-object v1, p0, Lcom/viber/voip/br;->a:Lcom/viber/voip/SystemDialogActivity;

    invoke-static {v1}, Lcom/viber/voip/SystemDialogActivity;->a(Lcom/viber/voip/SystemDialogActivity;)Landroid/content/DialogInterface;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/SystemDialogActivity;->a(Landroid/content/DialogInterface;)V

    .line 404
    return-void
.end method
