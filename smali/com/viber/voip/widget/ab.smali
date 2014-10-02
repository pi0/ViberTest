.class Lcom/viber/voip/widget/ab;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Lcom/viber/voip/widget/aa;


# direct methods
.method constructor <init>(Lcom/viber/voip/widget/aa;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 41
    iput-object p1, p0, Lcom/viber/voip/widget/ab;->c:Lcom/viber/voip/widget/aa;

    iput p2, p0, Lcom/viber/voip/widget/ab;->a:I

    iput p3, p0, Lcom/viber/voip/widget/ab;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 44
    iget-object v0, p0, Lcom/viber/voip/widget/ab;->c:Lcom/viber/voip/widget/aa;

    invoke-static {v0}, Lcom/viber/voip/widget/aa;->a(Lcom/viber/voip/widget/aa;)Lcom/viber/voip/widget/ae;

    move-result-object v0

    iget v1, p0, Lcom/viber/voip/widget/ab;->a:I

    iget v2, p0, Lcom/viber/voip/widget/ab;->b:I

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/widget/ae;->a(II)V

    .line 45
    return-void
.end method
