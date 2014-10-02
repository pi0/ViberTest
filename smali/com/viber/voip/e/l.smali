.class Lcom/viber/voip/e/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/e/s;


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Lcom/viber/voip/e/g;


# direct methods
.method constructor <init>(Lcom/viber/voip/e/g;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 136
    iput-object p1, p0, Lcom/viber/voip/e/l;->c:Lcom/viber/voip/e/g;

    iput p2, p0, Lcom/viber/voip/e/l;->a:I

    iput p3, p0, Lcom/viber/voip/e/l;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/viber/voip/e/r;)V
    .locals 2
    .parameter

    .prologue
    .line 139
    iget v0, p0, Lcom/viber/voip/e/l;->a:I

    iget v1, p0, Lcom/viber/voip/e/l;->b:I

    invoke-interface {p1, v0, v1}, Lcom/viber/voip/e/r;->a(II)V

    .line 140
    return-void
.end method
