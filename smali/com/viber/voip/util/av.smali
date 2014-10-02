.class final Lcom/viber/voip/util/av;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 92
    iput-object p1, p0, Lcom/viber/voip/util/av;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/viber/voip/util/av;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter

    .prologue
    .line 95
    iget-object v0, p0, Lcom/viber/voip/util/av;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/viber/voip/util/av;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/viber/voip/util/at;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Lcom/viber/voip/util/av;->a:Landroid/content/Context;

    instance-of v0, v0, Lcom/viber/voip/SystemDialogActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/util/av;->a:Landroid/content/Context;

    check-cast v0, Lcom/viber/voip/SystemDialogActivity;

    invoke-virtual {v0}, Lcom/viber/voip/SystemDialogActivity;->finish()V

    .line 97
    :cond_0
    return-void
.end method
