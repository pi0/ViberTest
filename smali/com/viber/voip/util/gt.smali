.class final Lcom/viber/voip/util/gt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:I


# direct methods
.method constructor <init>(Landroid/app/Activity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 750
    iput-object p1, p0, Lcom/viber/voip/util/gt;->a:Landroid/app/Activity;

    iput p2, p0, Lcom/viber/voip/util/gt;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 753
    iget-object v0, p0, Lcom/viber/voip/util/gt;->a:Landroid/app/Activity;

    iget v1, p0, Lcom/viber/voip/util/gt;->b:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 754
    return-void
.end method
