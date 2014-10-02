.class Lcom/viber/voip/c/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Z

.field final b:Ljava/lang/String;

.field final c:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/viber/voip/c/e;->b:Ljava/lang/String;

    .line 37
    iput-boolean p2, p0, Lcom/viber/voip/c/e;->a:Z

    .line 38
    iput-object p3, p0, Lcom/viber/voip/c/e;->c:Ljava/lang/String;

    .line 39
    return-void
.end method
