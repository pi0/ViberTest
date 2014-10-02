.class Lcom/viber/voip/e/h;
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
    .line 100
    iput-object p1, p0, Lcom/viber/voip/e/h;->c:Lcom/viber/voip/e/g;

    iput-object p2, p0, Lcom/viber/voip/e/h;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/viber/voip/e/h;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/viber/voip/e/r;)V
    .locals 2
    .parameter

    .prologue
    .line 103
    iget-object v0, p0, Lcom/viber/voip/e/h;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/viber/voip/e/h;->b:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcom/viber/voip/e/r;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    return-void
.end method
