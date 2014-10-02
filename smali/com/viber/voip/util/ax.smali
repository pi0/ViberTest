.class final Lcom/viber/voip/util/ax;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/CharSequence;

.field final synthetic c:I

.field final synthetic d:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/CharSequence;ILjava/lang/Runnable;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 164
    iput-object p1, p0, Lcom/viber/voip/util/ax;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/viber/voip/util/ax;->b:Ljava/lang/CharSequence;

    iput p3, p0, Lcom/viber/voip/util/ax;->c:I

    iput-object p4, p0, Lcom/viber/voip/util/ax;->d:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 167
    iget-object v1, p0, Lcom/viber/voip/util/ax;->a:Landroid/content/Context;

    iget-object v0, p0, Lcom/viber/voip/util/ax;->b:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget v0, p0, Lcom/viber/voip/util/ax;->c:I

    if-gtz v0, :cond_1

    const v0, 0x7f0c02b6

    :goto_0
    invoke-static {v1, v2, v0}, Lcom/viber/voip/util/at;->a(Landroid/content/Context;Ljava/lang/String;I)V

    .line 168
    invoke-static {p1}, Lcom/viber/voip/util/at;->b(Landroid/content/DialogInterface;)V

    .line 170
    iget-object v0, p0, Lcom/viber/voip/util/ax;->d:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/viber/voip/util/ax;->d:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 174
    :cond_0
    return-void

    .line 167
    :cond_1
    iget v0, p0, Lcom/viber/voip/util/ax;->c:I

    goto :goto_0
.end method
