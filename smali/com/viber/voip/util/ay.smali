.class final Lcom/viber/voip/util/ay;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/CharSequence;

.field final synthetic c:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/Runnable;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 178
    iput-object p1, p0, Lcom/viber/voip/util/ay;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/viber/voip/util/ay;->b:Ljava/lang/CharSequence;

    iput-object p3, p0, Lcom/viber/voip/util/ay;->c:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter

    .prologue
    .line 181
    iget-object v0, p0, Lcom/viber/voip/util/ay;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/viber/voip/util/ay;->b:Ljava/lang/CharSequence;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/viber/voip/util/at;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 182
    iget-object v0, p0, Lcom/viber/voip/util/ay;->c:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/viber/voip/util/ay;->c:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/util/ay;->a:Landroid/content/Context;

    instance-of v0, v0, Lcom/viber/voip/SystemDialogActivity;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/viber/voip/util/ay;->a:Landroid/content/Context;

    check-cast v0, Lcom/viber/voip/SystemDialogActivity;

    invoke-virtual {v0}, Lcom/viber/voip/SystemDialogActivity;->finish()V

    .line 186
    :cond_1
    return-void
.end method
