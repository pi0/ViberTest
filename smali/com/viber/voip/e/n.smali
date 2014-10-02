.class Lcom/viber/voip/e/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/e/s;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/viber/voip/e/g;


# direct methods
.method constructor <init>(Lcom/viber/voip/e/g;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 165
    iput-object p1, p0, Lcom/viber/voip/e/n;->b:Lcom/viber/voip/e/g;

    iput-boolean p2, p0, Lcom/viber/voip/e/n;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/viber/voip/e/r;)V
    .locals 1
    .parameter

    .prologue
    .line 168
    iget-boolean v0, p0, Lcom/viber/voip/e/n;->a:Z

    invoke-interface {p1, v0}, Lcom/viber/voip/e/r;->b(Z)V

    .line 169
    return-void
.end method
