.class Lcom/viber/voip/util/b/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Data:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final a:Lcom/viber/voip/util/b/a;

.field final b:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TData;"
        }
    .end annotation
.end field


# direct methods
.method varargs constructor <init>(Lcom/viber/voip/util/b/a;[Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/viber/voip/util/b/a;",
            "[TData;)V"
        }
    .end annotation

    .prologue
    .line 697
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 698
    iput-object p1, p0, Lcom/viber/voip/util/b/f;->a:Lcom/viber/voip/util/b/a;

    .line 699
    iput-object p2, p0, Lcom/viber/voip/util/b/f;->b:[Ljava/lang/Object;

    .line 700
    return-void
.end method
