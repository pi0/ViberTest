.class Lcom/viber/voip/e/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/e/s;


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/viber/voip/e/g;


# direct methods
.method constructor <init>(Lcom/viber/voip/e/g;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 184
    iput-object p1, p0, Lcom/viber/voip/e/p;->b:Lcom/viber/voip/e/g;

    iput-wide p2, p0, Lcom/viber/voip/e/p;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/viber/voip/e/r;)V
    .locals 2
    .parameter

    .prologue
    .line 187
    iget-wide v0, p0, Lcom/viber/voip/e/p;->a:J

    invoke-interface {p1, v0, v1}, Lcom/viber/voip/e/r;->a(J)V

    .line 188
    return-void
.end method
