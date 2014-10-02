.class Lcom/viber/voip/e/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/e/s;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/viber/voip/e/g;


# direct methods
.method constructor <init>(Lcom/viber/voip/e/g;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 117
    iput-object p1, p0, Lcom/viber/voip/e/j;->c:Lcom/viber/voip/e/g;

    iput-object p2, p0, Lcom/viber/voip/e/j;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/viber/voip/e/j;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/viber/voip/e/r;)V
    .locals 2
    .parameter

    .prologue
    .line 120
    iget-object v0, p0, Lcom/viber/voip/e/j;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/viber/voip/e/j;->b:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcom/viber/voip/e/r;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    return-void
.end method
