.class final Lcom/viber/voip/util/au;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:I

.field final synthetic d:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;ILjava/lang/Runnable;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 82
    iput-object p1, p0, Lcom/viber/voip/util/au;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/viber/voip/util/au;->b:Ljava/lang/String;

    iput p3, p0, Lcom/viber/voip/util/au;->c:I

    iput-object p4, p0, Lcom/viber/voip/util/au;->d:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 85
    iget-object v0, p0, Lcom/viber/voip/util/au;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/viber/voip/util/au;->b:Ljava/lang/String;

    iget v2, p0, Lcom/viber/voip/util/au;->c:I

    invoke-static {v0, v1, v2}, Lcom/viber/voip/util/at;->a(Landroid/content/Context;Ljava/lang/String;I)V

    .line 86
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 87
    iget-object v0, p0, Lcom/viber/voip/util/au;->d:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/viber/voip/util/au;->d:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 90
    :cond_0
    return-void
.end method
