.class Lcom/viber/voip/e/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/e/s;


# instance fields
.field final synthetic a:Lcom/viber/voip/e/g;


# direct methods
.method constructor <init>(Lcom/viber/voip/e/g;)V
    .locals 0
    .parameter

    .prologue
    .line 175
    iput-object p1, p0, Lcom/viber/voip/e/o;->a:Lcom/viber/voip/e/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/viber/voip/e/r;)V
    .locals 1
    .parameter

    .prologue
    .line 178
    iget-object v0, p0, Lcom/viber/voip/e/o;->a:Lcom/viber/voip/e/g;

    invoke-static {v0}, Lcom/viber/voip/e/g;->b(Lcom/viber/voip/e/g;)Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/viber/voip/e/r;->a(Z)V

    .line 179
    return-void
.end method
